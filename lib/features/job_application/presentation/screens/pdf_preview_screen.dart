import 'dart:developer';
import 'dart:io';

import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/file_manager/file_saver/presentation/managers/file_saver_bloc/file_saver_bloc.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class PdfPreviewScreen extends StatefulWidget {
  static const routeName = '/pdf-preview';
  final File pdfFile;
  const PdfPreviewScreen({
    Key? key,
    required this.pdfFile,
  }) : super(key: key);

  @override
  State<PdfPreviewScreen> createState() => _PdfPreviewScreenState();
}

class _PdfPreviewScreenState extends State<PdfPreviewScreen> {
  late final _scrollController = ScrollController();
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            snap: true,
            floating: true,
            actions: [
              BlocProvider<FileSaverBloc>(
                create: (context) => GetIt.I.get<FileSaverBloc>(),
                child: Builder(
                  builder: (context) {
                    return BlocConsumer<FileSaverBloc, FileSaverState>(
                      listener: (context, state) {
                        if (state is FileSaverSaveSuccess) {
                          showSuccussSnackBar(
                            context,
                            context.loc.file_saved_successfully,
                          );
                        }
                        if (state is FileSaverSaveFailure) {
                          final error = state.error;
                          if (error is StoragePermissionsException) {
                            if (error is DeniedStoragePermissionsException) {
                              showDialogToExplainWhyWeNeedStoragePermission(
                                context: context,
                                content: context.loc
                                    .in_order_to_save_a_file_you_need_to_give_the_app_storage_permissions,
                                onRetryPressed: () {
                                  context.read<FileSaverBloc>().add(
                                        FileSaverFileSaved(
                                          widget.pdfFile,
                                        ),
                                      );
                                  Navigator.of(context).pop();
                                },
                              );
                            }
                            if (error
                                is PermanentlyDeniedStoragePermissionsException) {
                              showDialogTellTheUserThatStoragePermissionIsPermanentlyDenied(
                                context,
                              );
                            }
                          } else {
                            showErrorSnackBar(
                              context,
                              error.getLocalMessageError(context),
                            );
                          }
                        }
                      },
                      builder: (context, state) {
                        return AnimatedCrossFade(
                          firstCurve: Curves.easeInOutCubic,
                          secondCurve: Curves.easeInOutCubic,
                          duration: const Duration(milliseconds: 300),
                          crossFadeState: state is FileSaverInProgress
                              ? CrossFadeState.showSecond
                              : CrossFadeState.showFirst,
                          firstChild: IconButton(
                            onPressed: () {
                              context.read<FileSaverBloc>().add(
                                    FileSaverFileSaved(
                                      widget.pdfFile,
                                    ),
                                  );
                            },
                            icon: const Icon(
                              Icons.save_alt_rounded,
                            ),
                          ),
                          secondChild: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 8,
                                top: 4,
                                bottom: 4,
                              ),
                              child: CircularProgressIndicator(
                                color: _theme.colorScheme.secondary,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            fillOverscroll: true,
            child: InteractiveViewer(
              constrained: false,
              child: SizedBox(
                height: _size.height,
                width: _size.width,
                child: RawGestureDetector(
                  gestures: {
                    _CustomDragGestureRecognizer:
                        GestureRecognizerFactoryWithHandlers<
                            _CustomDragGestureRecognizer>(
                      () => _CustomDragGestureRecognizer(
                        onDragUpdate: _onOneDragHitTest,
                      ),
                      (instance) {},
                    )
                  },
                  child: PdfPreview(
                    loadingWidget: LoadingIndicator(
                      indicatorColor: _theme.colorScheme.secondary,
                    ),
                    scrollViewDecoration: BoxDecoration(
                      color: _theme.colorScheme.primary,
                    ),
                    useActions: false,
                    initialPageFormat: PdfPageFormat.a4,
                    build: (format) => widget.pdfFile.readAsBytes(),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _onOneDragHitTest(delta) {
    if (_isScrollingUp(delta)) {
      _showSliverAppBar();
    } else {
      _hideSliverAppBar();
    }
  }

  bool _isScrollingUp(Offset delta) => delta.dy.isNegative;

  void _hideSliverAppBar() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.decelerate,
    );
  }

  void _showSliverAppBar() {
    _scrollController.animateTo(
      _scrollController.position.minScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.decelerate,
    );
  }
}

class _CustomDragGestureRecognizer extends OneSequenceGestureRecognizer {
  final void Function(Offset delta) onDragUpdate;

  _CustomDragGestureRecognizer({required this.onDragUpdate});

  @override
  String get debugDescription => 'CustomDragGestureRecognizer';

  @override
  void didStopTrackingLastPointer(int pointer) {}
  @override
  void addPointer(PointerDownEvent event) {
    startTrackingPointer(event.pointer);
  }

  @override
  void handleEvent(PointerEvent event) {
    if (event is PointerMoveEvent) {
      if (_isVerticalDragging(event)) {
        _resolveValidVerticalDragging(event);
      } else {
        resolve(GestureDisposition.rejected);
        stopTrackingPointer(event.pointer);
      }
    } else if (event is PointerUpEvent) {
      stopTrackingPointer(event.pointer);
    }
  }

  void _resolveValidVerticalDragging(PointerMoveEvent event) {
    onDragUpdate(event.delta);
    resolve(GestureDisposition.rejected);
    stopTrackingPointer(event.pointer);
  }

  bool _isVerticalDragging(PointerMoveEvent event) => event.delta.dy != 0.0;
}

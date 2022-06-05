import 'dart:io';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/file_manager/file_saver/presentation/managers/file_saver_bloc/file_saver_bloc.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:path/path.dart' as path;

class PdfPreviewScreen extends StatelessWidget {
  static const routeName = '/pdf-preview';
  final File pdfFile;
  const PdfPreviewScreen({
    Key? key,
    required this.pdfFile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
                                      pdfFile,
                                      AppFolder.jobApplications,
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
                                  pdfFile,
                                  AppFolder.jobApplications,
                                ),
                              );
                        },
                        icon: const Icon(
                          Icons.save_alt_rounded,
                        ),
                      ),
                      secondChild: Center(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(
                            end: 8,
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
      body: InteractiveViewer(
        constrained: false,
        child: SizedBox(
          height: _size.height,
          width: _size.width,
          child: PdfPreview(
            loadingWidget: LoadingIndicator(
              indicatorColor: _theme.colorScheme.secondary,
            ),
            scrollViewDecoration: BoxDecoration(
              color: _theme.colorScheme.primary,
            ),
            useActions: false,
            padding: EdgeInsets.zero,
            pdfFileName: path.basenameWithoutExtension(
              pdfFile.path,
            ),
            previewPageMargin: EdgeInsets.zero,
            initialPageFormat: PdfPageFormat.a4,
            build: (format) => pdfFile.readAsBytes(),
          ),
        ),
      ),
    );
  }
}

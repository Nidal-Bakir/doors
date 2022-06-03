import 'dart:developer';
import 'dart:io';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/file_manager/file_saver/presentation/managers/file_saver_bloc/file_saver_bloc.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/email_text_field.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/core/widgets/name_text_field.dart';
import 'package:doors/core/widgets/phone_number_text_field.dart';
import 'package:doors/core/widgets/profile_image.dart';
import 'package:doors/core/widgets/title_with_under_line_in_the_end.dart';
import 'package:doors/features/job_application/presentation/screens/pdf_preview_screen.dart';
import 'package:doors/features/resume_creator/data/basic_resume_pdf_creator.dart';
import 'package:doors/features/resume_creator/models/resume_data.dart';
import 'package:doors/features/resume_creator/presentation/managers/resume_creator_bloc/resume_creator_bloc.dart';
import 'package:doors/features/resume_creator/presentation/managers/resume_sections_manager_bloc/resume_sections_manager_bloc.dart';
import 'package:doors/features/resume_creator/presentation/managers/resume_subdivisions_manager_bloc/resume_subdivisions_manager_bloc.dart';
import 'package:doors/features/resume_creator/presentation/widgets/basic_resume_creator_widgets/add_new_section_fab.dart';
import 'package:doors/features/resume_creator/presentation/widgets/basic_resume_creator_widgets/current_residence_text_form_field.dart';
import 'package:doors/features/resume_creator/presentation/widgets/basic_resume_creator_widgets/remove_subdivision_fab.dart';
import 'package:doors/features/resume_creator/presentation/widgets/basic_resume_creator_widgets/resume_sections_blocks.dart';
import 'package:doors/features/resume_creator/presentation/widgets/basic_resume_creator_widgets/resume_head_line_text_field.dart';
import 'package:doors/features/resume_creator/presentation/widgets/sized_box_8_h.dart';
import 'package:doors/features/resume_creator/repository/resume_data_manager_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class BasicResumeCreator extends StatefulWidget {
  const BasicResumeCreator({Key? key}) : super(key: key);

  @override
  State<BasicResumeCreator> createState() => _BasicResumeCreatorState();
}

class _BasicResumeCreatorState extends State<BasicResumeCreator> {
  final _keyFrom = GlobalKey<FormState>();
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider<ResumeSectionsManagerBloc>(
          create: (_) => GetIt.I.get<ResumeSectionsManagerBloc>(),
        ),
        BlocProvider<ResumeCreatorBloc>(
          create: (_) => GetIt.I.get<ResumeCreatorBloc>(
            param1: BasicResumePdfCreator(),
          ),
        ),
        BlocProvider<FileSaverBloc>(
          create: (_) => GetIt.I.get<FileSaverBloc>(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return BlocProvider<ResumeSubdivisionsManagerBloc>(
            create: (context) => GetIt.I.get(
              param1: context.read<ResumeSectionsManagerBloc>(),
            ),
            child: Builder(builder: (context) {
              return Scaffold(
                floatingActionButton: const RemoveSubdivisionFAB(),
                backgroundColor: _theme.colorScheme.primary,
                body: SafeArea(
                  child: BlocListener<ResumeSubdivisionsManagerBloc,
                      ResumeSubdivisionsManagerState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        dragUpdate: _onDragUpdate,
                      );
                    },
                    child: CustomScrollView(
                      controller: _scrollController,
                      slivers: [
                        SliverFillRemaining(
                          hasScrollBody: false,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 16.0,
                            ),
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 20.0,
                                  horizontal: 20.0,
                                ),
                                child: Form(
                                  key: _keyFrom,
                                  child: const _BasicResumeCreatorMainBody(),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }

  void _onDragUpdate(double normalizedDy) {
    final _isAtTheTopOfTheScreen = normalizedDy < 0.08;

    final _isAtTheBottomOfTheScreen = normalizedDy > 0.95;

    final _isNotAtTheMinScrollExtent = _scrollController.position.pixels >
        _scrollController.position.minScrollExtent;

    final _isNotAtTheMaxScrollExtent = _scrollController.position.pixels <
        _scrollController.position.maxScrollExtent;

    if (_isAtTheTopOfTheScreen && _isNotAtTheMinScrollExtent) {
      _scrollController.animateTo(
        _scrollController.position.pixels - 70,
        curve: Curves.linear,
        duration: const Duration(milliseconds: 100),
      );
    } else if (_isAtTheBottomOfTheScreen && _isNotAtTheMaxScrollExtent) {
      _scrollController.animateTo(
        _scrollController.position.pixels + 70,
        curve: Curves.linear,
        duration: const Duration(milliseconds: 100),
      );
    }
  }
}

class _BasicResumeCreatorMainBody extends StatefulWidget {
  const _BasicResumeCreatorMainBody({Key? key}) : super(key: key);

  @override
  State<_BasicResumeCreatorMainBody> createState() =>
      _BasicResumeCreatorMainBodyState();
}

class _BasicResumeCreatorMainBodyState
    extends State<_BasicResumeCreatorMainBody> {
  late final User _currentUser;

  String? _resumeHeadLine;

  var _resumeUserBasicInfo = ResumeUserBasicInfo(name: '');

  var _isForPreview = false;

  @override
  void initState() {
    _currentUser = context.read<AuthBloc>().getCurrentUser()!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: TitleWithUnderLineInTheEnd(
            label: context.loc.resume_creator,
            numberOfUnderLinedChars: 2,
          ),
        ),
        const SizedBox8H(),
        NameTextField(
          hint: context.loc.name,
          initName: _currentUser.name,
          onSave: (name) {
            _resumeUserBasicInfo = _resumeUserBasicInfo.copyWith(name: name);
          },
        ),
        const SizedBox8H(),
        EmailTextField(
          initEmail: _currentUser.emailAddress,
          onSave: (email) {
            _resumeUserBasicInfo = _resumeUserBasicInfo.copyWith(email: email);
          },
        ),
        const SizedBox8H(),
        CurrentResidenceTextFormField(
          onSave: (currentResidence) {
            _resumeUserBasicInfo = _resumeUserBasicInfo.copyWith(
              currentResidence: currentResidence,
            );
          },
        ),
        const SizedBox8H(),
        PhoneNumberTextField(
          initPhoneNumber: _currentUser.phoneNumber,
          onSave: (phoneNumber) {
            _resumeUserBasicInfo = _resumeUserBasicInfo.copyWith(
                phoneNumber: phoneNumber.toString());
          },
        ),
        const SizedBox8H(),
        ProfileImage(
          onProfileImageSelected: _onProfileImageSelected,
        ),
        const SizedBox8H(),
        ResumeHeadLineTextField(
          onSave: (resumeHeadLine) {
            if (resumeHeadLine != null && resumeHeadLine.isEmpty) {
              _resumeHeadLine = null;
            } else {
              _resumeHeadLine = resumeHeadLine;
            }
          },
        ),
        const SizedBox8H(),
        const ResumeSectionsBlocks(),
        const AddNewSectionFAB(),
        const SizedBox8H(),
        const Spacer(),
        MultiBlocListener(
          listeners: [
            BlocListener<ResumeCreatorBloc, ResumeCreatorState>(
              listener: (context, state) {
                state.when(
                  initial: () {},
                  creationInProgress: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return const Center(
                          child: LoadingIndicator(),
                        );
                      },
                    );
                  },
                  creationSuccess: (createdResumeFile) {
                    if (_isForPreview) {
                      // pop the loading dialog
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed(
                        PdfPreviewScreen.routeName,
                        arguments: createdResumeFile,
                      );
                    } else {
                      context.read<FileSaverBloc>().add(
                            FileSaverFileSaved(
                              createdResumeFile,
                              AppFolder.myResumes,
                            ),
                          );
                    }
                  },
                  creationFailure: (error) {
                    showErrorSnackBar(
                      context,
                      error.getLocalMessageError(context),
                    );
                  },
                );
              },
            ),
            BlocListener<FileSaverBloc, FileSaverState>(
              listener: (context, state) {
                state.whenOrNull(
                  saveSuccess: (savedFile) {
                    // pop the loading dialog
                    Navigator.of(context).pop();
                    Navigator.of(context).pop(savedFile);
                  },
                  saveFailure: (error) {
                    if (error is StoragePermissionsException) {
                      if (error is DeniedStoragePermissionsException) {
                        showDialogToExplainWhyWeNeedStoragePermission(
                          context: context,
                          content: context.loc
                              .in_order_to_save_a_file_you_need_to_give_the_app_storage_permissions,
                          onRetryPressed: _onDonePressed,
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
                  },
                );
              },
            ),
          ],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: _onPreviewPressed,
                child: Text(context.loc.preview),
              ),
              ElevatedButton(
                onPressed: _onDonePressed,
                child: Text(context.loc.done),
              )
            ],
          ),
        ),
      ],
    );
  }

  void _onDonePressed() {
    _isForPreview = false;
    final _form = Form.of(context)!;
    if (_form.validate()) {
      _form.save();
      final resumeSections =
          GetIt.I.get<ResumeDataManagerRepository>().getAllResumeSections();
      final resumeData = ResumeData(
        userBasicInfo: _resumeUserBasicInfo,
        resumeSections: resumeSections,
        resumeHeadLineLabel: _resumeHeadLine,
      );
      context.read<ResumeCreatorBloc>().add(ResumeCreatorCreated(resumeData));
    }
  }

  void _onPreviewPressed() {
    _isForPreview = true;
    final _form = Form.of(context)!;
    if (_form.validate()) {
      _form.save();

      final resumeSections =
          GetIt.I.get<ResumeDataManagerRepository>().getAllResumeSections();
      final resumeData = ResumeData(
        userBasicInfo: _resumeUserBasicInfo,
        resumeSections: resumeSections,
        resumeHeadLineLabel: _resumeHeadLine,
      );
      context.read<ResumeCreatorBloc>().add(ResumeCreatorCreated(resumeData));
    }
  }

  void _onProfileImageSelected({
    required String? profileImagePath,
    required String? profileImageName,
  }) {
    if (profileImagePath != null) {
      final _profileImage = File.fromUri(Uri.file(profileImagePath));
      _resumeUserBasicInfo =
          _resumeUserBasicInfo.copyWith(profileImage: _profileImage);
    } else {
      _resumeUserBasicInfo = _resumeUserBasicInfo.copyWith(profileImage: null);
    }
  }
}

import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/file_manager/file_uploader/presentation/managers/file_uploader_bloc/file_uploader_bloc.dart';
import 'package:doors/core/models/job_application.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/sized_box_16_h.dart';
import 'package:doors/features/job_application/presentation/managers/send_job_application_bloc/send_job_application_bloc.dart';
import 'package:doors/features/job_application/presentation/widgets/selected_cv_info.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CVUploadingStateWidget extends StatefulWidget {
  final JobPost jobPost;
  const CVUploadingStateWidget({
    Key? key,
    required this.jobPost,
  }) : super(key: key);

  @override
  State<CVUploadingStateWidget> createState() => _CVUploadingStateWidgetState();
}

class _CVUploadingStateWidgetState extends State<CVUploadingStateWidget> {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SelectedCVInfo(),
        const SizedBox16H(),
        BlocConsumer<FileUploaderBloc, FileUploaderState>(
          listener: (context, state) {
            if (state is FileUploaderUploadSuccess) {
              final _jobApplication = JobApplication()
                ..job = widget.jobPost
                ..cvFile = state.uploadedFile
                ..fileSize = state.fileSize
                ..author = context.read<AuthBloc>().getCurrentUser()!;

              context.read<SendJobApplicationBloc>().add(
                    SendJobApplicationJobApplicationSended(
                      _jobApplication,
                    ),
                  );
            }
            if (state is FileUploaderFileSelectingFailure) {
              final error = state.error;
              if (error is StoragePermissionsException) {
                if (error is DeniedStoragePermissionsException) {
                  showDialogToExplainWhyWeNeedStoragePermission(
                    context: context,
                    content: context.loc
                        .in_order_to_upload_your_cv_you_need_to_give_the_app_storage_permissions,
                    onRetryPressed: () {
                      context.read<FileUploaderBloc>().add(
                            const FileUploaderFileManagerOpened(
                              ['pdf'],
                              FileType.custom,
                            ),
                          );
                      Navigator.of(context).pop();
                    },
                  );
                }
                if (error is PermanentlyDeniedStoragePermissionsException) {
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
            return state.when(
              initial: () => const SizedBox.shrink(),
              uploadInProgress: (progress, total) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      context.loc.do_not_exit_this_screen,
                      style: _theme.textTheme.subtitle2,
                    ),
                    const SizedBox16H(),
                    const LinearProgressIndicator(
                        // TODO: uncoment this line when new version of pares flutter sdk relesed
                        // and fixes the dio bug not calling progressCallback
                        // value: progress / total,
                        ),
                    // TODO: uncoment this line when new version of pares flutter sdk relesed
                    // and fixes the dio bug not calling progressCallback
                    // Align(
                      // alignment: AlignmentDirectional.centerEnd,
                    //   child: Text(
                    //     ((progress / total) * 100).toStringAsFixed(0) + '%',
                    //     style: _theme.textTheme.subtitle2,
                    //   ),
                    // ),
                  ],
                );
              },
              fileSelectingSuccess: (_) => const SizedBox.shrink(),
              fileSelectingFailure: (_) => const SizedBox.shrink(),
              uploadSuccess: (_, __) => const SizedBox.shrink(),
              uploadFailure: (error) {
                return Text(
                  error.getLocalMessageError(context),
                  style: _theme.textTheme.subtitle1?.copyWith(
                    color: _theme.colorScheme.error,
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}

import 'package:doors/core/features/file_manager/file_downloader/presentation/managers/file_downloader_bloc/file_downloader_bloc.dart';
import 'package:doors/core/models/job_application.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/circular_profile_image.dart';
import 'package:doors/features/job_application/presentation/screens/pdf_preview_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class JobApplicationItem extends StatelessWidget {
  final JobApplication jobApplication;
  JobApplicationItem({
    Key? key,
    required this.jobApplication,
  }) : super(key: key);
  late final _author = jobApplication.author;
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return BlocProvider<FileDownloaderBloc>(
      create: (context) => GetIt.I.get<FileDownloaderBloc>()
        ..add(
          FileDownloaderCachedFileLoaded(jobApplication.cvFile),
        ),
      child: Builder(
        builder: (context) {
          return BlocConsumer<FileDownloaderBloc, FileDownloaderState>(
            listener: (context, state) {
              if (state is FileDownloaderDownloadFailure) {
                showErrorSnackBar(
                  context,
                  state.error.getLocalMessageError(context),
                );
              }
            },
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Card(
                  child: InkWell(
                    onTap: () {
                      if (state is FileDownloaderDownloadInProgress) {
                        return;
                      }
                      if (state is FileDownloaderDownloadSuccess) {
                        Navigator.of(context).pushNamed(
                          PdfPreviewScreen.routeName,
                          arguments: state.downloadFile.file,
                        );
                        return;
                      }

                      context.read<FileDownloaderBloc>().add(
                            FileDownloaderFileDownloaded(
                              jobApplication.cvFile,
                            ),
                          );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Flexible(
                            child: Row(
                              children: [
                                CircularProfileImage(
                                  url: jobApplication.author.profileImage?.url,
                                  height: 60,
                                  width: 60,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          _author.name,
                                          style: _theme.textTheme.subtitle2,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      if (_author.userHumanReadableLocation !=
                                          null)
                                        Flexible(
                                          child: Text(
                                            _author.userHumanReadableLocation!,
                                            style: _theme.textTheme.caption,
                                          ),
                                        ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  AnimatedOpacity(
                                    duration: const Duration(milliseconds: 300),
                                    opacity:
                                        state is FileDownloaderDownloadInProgress ||
                                                state is FileDownloaderInitial
                                            ? 0.5
                                            : 1.0,
                                    child: AnimatedScale(
                                      scale: state
                                              is FileDownloaderDownloadInProgress
                                          ? 0.7
                                          : 1,
                                      duration:
                                          const Duration(milliseconds: 300),
                                      child: Image.asset(
                                          'assets/icons/pdf-icon.png',
                                          height: 40,
                                          cacheHeight: 40),
                                    ),
                                  ),
                                  if (state is FileDownloaderDownloadFailure ||
                                      state is FileDownloaderInitial)
                                    const Icon(
                                      Icons.file_download_rounded,
                                    ),
                                  if (state is FileDownloaderDownloadInProgress)
                                    const SizedBox.square(
                                      dimension: 40,
                                      child: CircularProgressIndicator(
                                          // TODO: uncomment this line whene new parse SDK relesed
                                          // value: state.progress / state.total,
                                          ),
                                    ),
                                  // if (state is FileDownloaderDownloadInProgress)
                                  //   Text(
                                  //     (state.progress / state.total)
                                  //             .toStringAsFixed(0) +
                                  //         '%',
                                  //   ),
                                ],
                              ),
                              if (state is! FileDownloaderDownloadSuccess)
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.only(top: 2),
                                  child: Text(
                                    jobApplication.fileSize,
                                  ),
                                )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

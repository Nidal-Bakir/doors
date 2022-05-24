import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/file_manager/file_uploader/presentation/managers/file_uploader_bloc/file_uploader_bloc.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:doors/core/widgets/sized_box_16_h.dart';
import 'package:doors/core/widgets/title_with_under_line_in_the_end.dart';
import 'package:doors/features/job_application/presentation/managers/send_job_application_bloc/send_job_application_bloc.dart';
import 'package:doors/features/job_application/presentation/widgets/cv_uploading_state_widget.dart';
import 'package:doors/features/job_application/presentation/widgets/send_job_application_state_widget.dart';
import 'package:doors/features/job_application/presentation/widgets/upload_and_create_cv_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class SendJobApplicationScreen extends StatelessWidget {
  static const routeName = '/send-job-application';
  final JobPost jobPost;

  const SendJobApplicationScreen({
    Key? key,
    required this.jobPost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider<FileUploaderBloc>(
          create: (_) => GetIt.I.get<FileUploaderBloc>(),
        ),
        BlocProvider<SendJobApplicationBloc>(
          create: (_) => GetIt.I.get<SendJobApplicationBloc>(),
        ),
      ],
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 32.0,
                  ),
                  child: Hero(
                    tag: 'card',
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 30.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: TitleWithUnderLineInTheEnd(
                                label: context.loc.apply,
                                numberOfUnderLinedChars: 2,
                              ),
                            ),
                            const SizedBox16H(),
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/images/cv.png',
                                height: 200,
                                cacheHeight: 200,
                              ),
                            ),
                            const SizedBox16H(),
                            LineWithTextOnRow.rich(
                              lineMargin: const EdgeInsets.only(top: 3),
                              crossAxisAlignment: CrossAxisAlignment.start,
                              textSpan: TextSpan(
                                style: _theme.textTheme.subtitle1,
                                children: [
                                  TextSpan(
                                    text: context.loc.if_you_already_have_a,
                                  ),
                                  TextSpan(
                                    text: ' CV ',
                                    style: _theme.textTheme.subtitle1?.copyWith(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  TextSpan(text: context.loc.as_a),
                                  TextSpan(
                                    text: ' PDF ',
                                    style: _theme.textTheme.subtitle1?.copyWith(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  TextSpan(
                                    text: context.loc
                                        .file_click_on_upload_or_you_can_create_one_using_one_of_our_predefined_templates,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox16H(),
                            CVUploadingStateWidget(jobPost: jobPost),
                            const SendJobApplicationStateWidget(),
                            const SizedBox16H(),
                            const Spacer(),
                            const UploadAndCreateCVButtons()
                          ],
                        ),
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
  }
}

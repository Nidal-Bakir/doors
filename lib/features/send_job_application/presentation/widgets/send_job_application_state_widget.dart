import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/sized_box_16_h.dart';
import 'package:doors/features/send_job_application/presentation/managers/send_job_application_bloc/send_job_application_bloc.dart';
import 'package:doors/features/send_job_application/presentation/screens/congratulations_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SendJobApplicationStateWidget extends StatelessWidget {
  const SendJobApplicationStateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return BlocConsumer<SendJobApplicationBloc, SendJobApplicationState>(
      listener: (context, state) {
        if (state is SendJobApplicationSendSuccess) {
          Navigator.of(context)
              .pushReplacementNamed(CongratulationsScreen.routeName);
        }
      },
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          inProgress: () {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  context.loc.do_not_exit_this_screen,
                  style: _theme.textTheme.subtitle2,
                ),
                const SizedBox16H(),
                Text(
                  context.loc
                      .your_cv_upload_successfully_sending_your_cv_to_the_company,
                  style: _theme.textTheme.subtitle2,
                ),
                const SizedBox16H(),
                const LinearProgressIndicator()
              ],
            );
          },
          sendSuccess: (_) => const SizedBox.shrink(),
          sendFailure: (error) {
            return Text(
              error.getLocalMessageError(context),
              style: _theme.textTheme.subtitle1?.copyWith(
                color: _theme.colorScheme.error,
              ),
            );
          },
        );
      },
    );
  }
}

import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:doors/core/widgets/sized_box_16_h.dart';
import 'package:doors/core/widgets/title_with_under_line_in_the_end.dart';
import 'package:flutter/material.dart';

class CongratulationsScreen extends StatelessWidget {
  static const routeName = '/congratulations';
  const CongratulationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
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
                            alignment: AlignmentDirectional.center,
                            child: TitleWithUnderLineInTheEnd(
                              label: context.loc.apply,
                              numberOfUnderLinedChars: 2,
                            ),
                          ),
                          const SizedBox16H(),
                          Align(
                            alignment: AlignmentDirectional.center,
                            child: Image.asset(
                              'assets/images/check.png',
                              height: 250,
                              cacheHeight: 250,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              context.loc.congratulations,
                              style: _theme.textTheme.headline5,
                            ),
                          ),
                          const SizedBox16H(),
                          LineWithTextOnRow(
                            textStyle: _theme.textTheme.subtitle1,
                            lineMargin: const EdgeInsetsDirectional.only(top: 3),
                            crossAxisAlignment: CrossAxisAlignment.start,
                            text: context.loc
                                .your_application_was_successfully_submitted,
                          ),
                          const SizedBox16H(),
                          const Spacer(),
                          Align(
                            alignment: AlignmentDirectional.center,
                            child: SizedBox(
                              width: 200,
                              child: ElevatedButton(
                                child: Text(context.loc.done),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          ),
                          const SizedBox16H(),
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
    );
  }
}

import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/title_with_under_line_in_the_end.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SuspendedScreen extends StatelessWidget {
  static const routeName = '/suspended';
  const SuspendedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: _theme.colorScheme.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 20.0,
              ),
              child: SizedBox.expand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TitleWithUnderLineInTheEnd(
                      label: context.loc.contact_us,
                      numberOfUnderLinedChars: 2,
                    ),
                    Image.asset('assets/images/suspended.png'),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        context.loc.your_account_has_been_suspended,
                        style: _theme.textTheme.headline5,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(bottom: 8),
                      child: Text(
                        context.loc.for_more_information_contact_our,
                        style: _theme.textTheme.headline6?.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Theme(
                      data: _theme.copyWith(
                        elevatedButtonTheme: ElevatedButtonThemeData(
                          style: _theme.elevatedButtonTheme.style?.copyWith(
                            foregroundColor: MaterialStateProperty.all(
                                _theme.colorScheme.secondary),
                            backgroundColor: MaterialStateProperty.all(
                                _theme.colorScheme.primary),
                            textStyle: MaterialStateProperty.all(
                              _theme.textTheme.subtitle2,
                            ),
                          ),
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () async {
                          if (await canLaunch(emailLaunchUri.toString())) {
                            launch(emailLaunchUri.toString());
                          } else {
                            showErrorSnackBar(
                              context,
                              context.loc.can_not_open_default_mail_app,
                            );
                          }
                        },
                        child: Text(
                          context.loc.support_team,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

String? _encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}

final Uri emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'Supp.doors.app@gmail.com',
  query: _encodeQueryParameters(
      <String, String>{'subject': 'My account has been suspended'}),
);

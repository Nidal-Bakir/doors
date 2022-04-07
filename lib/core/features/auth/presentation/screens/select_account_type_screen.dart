import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/screens/sign_up_part_one_screen.dart';
import 'package:doors/core/features/auth/presentation/widgets/account_type_button_shape.dart';
import 'package:doors/core/widgets/title_with_under_line_in_the_end.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SelectAccountTypeScreen extends StatelessWidget {
  static const routeName = '/select_account_type';
  const SelectAccountTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Hero(
            tag: 'card',
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: TitleWithUnderLineInTheEnd(
                        label: context.loc.account_type,
                        numberOfUnderLinedChars: 2,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AccountTypeButtonShape(
                          icon: Icons.person_outline_rounded,
                          label: context.loc.client,
                          onTap: () => _onClientTap(context),
                        ),
                        const SizedBox(
                          height: 24.0,
                        ),
                        AccountTypeButtonShape(
                          icon: Icons.apartment_rounded,
                          label: context.loc.company,
                          onTap: () => _onCompanyTap(context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onClientTap(BuildContext context) {
    HapticFeedback.selectionClick();
    Navigator.of(context).pushNamed(
      SignUpPartOneScreen.routeName,
      arguments: AccountType.user,
    );
  }

  void _onCompanyTap(BuildContext context) {
    HapticFeedback.selectionClick();
    Navigator.of(context).pushNamed(
      SignUpPartOneScreen.routeName,
      arguments: AccountType.company,
    );
  }
}

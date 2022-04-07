import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/title_with_under_line_in_the_end.dart';
import 'package:flutter/material.dart';

class SignUpHeadLineTextWithIcon extends StatelessWidget {
  const SignUpHeadLineTextWithIcon({
    Key? key,
    required this.accountType,
  }) : super(key: key);

  final AccountType accountType;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          accountType == AccountType.user
              ? Icons.person_outline_rounded
              : Icons.apartment_rounded,
          size: 50,
        ),
        TitleWithUnderLineInTheEnd(
          label: context.loc.sign_up,
          numberOfUnderLinedChars: 2,
        )
      ],
    );
  }
}

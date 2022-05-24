import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/widgets/title_with_under_line_in_the_end.dart';
import 'package:flutter/material.dart';

class UserNameWithIconAccountType extends StatelessWidget {
  const UserNameWithIconAccountType({
    Key? key,
    required this.accountType,
    required this.name,
  }) : super(key: key);

  final AccountType accountType;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          accountType == AccountType.user
              ? Icons.person_outline_rounded
              : Icons.apartment_rounded,
          size: 50,
        ),
        Flexible(
          child: TitleWithUnderLineInTheEnd(
            label: name,
            numberOfUnderLinedChars: 2,
          ),
        )
      ],
    );
  }
}

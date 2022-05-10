import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:flutter/material.dart';

class NameTextField extends StatelessWidget {
  final Function(String name) onSave;
  final AccountType accountType;
  final String? initName;
  const NameTextField({
    Key? key,
    required this.onSave,
    required this.accountType,
    this.initName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initName,
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      enableSuggestions: true,
      keyboardType: TextInputType.emailAddress,
      validator: (name) => isValidName(name, context),
      onSaved: (name) => onSave(name!),
      decoration: InputDecoration(
        hintText: accountType == AccountType.user
            ? context.loc.name
            : context.loc.company_name,
      ),
    );
  }

  isValidName(String? name, BuildContext context) {
    if (name == null || name.isEmpty) {
      return context.loc.enter_your_name;
    } else if (name.length < 3) {
      return context.loc.at_least_three_character_long;
    }
  }
}

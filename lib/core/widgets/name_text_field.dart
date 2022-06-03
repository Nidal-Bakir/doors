import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:flutter/material.dart';

class NameTextField extends StatelessWidget {
  final VoidCallbackWithParam<String> onSave;
  final String hint;
  final String? initName;
  const NameTextField({
    Key? key,
    required this.onSave,
    required this.hint,
    this.initName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initName,
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      enableSuggestions: true,
      keyboardType: TextInputType.name,
      validator: (name) => isValidName(name, context),
      onSaved: (name) => onSave(name!),
      decoration: InputDecoration(
        hintText: hint,
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

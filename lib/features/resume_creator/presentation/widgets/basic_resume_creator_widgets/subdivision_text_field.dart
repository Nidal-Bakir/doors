import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:flutter/material.dart';

class SubdivisionTextField extends StatelessWidget {
  final int maxLines;
  final String hint;
  final String? initValue;
  final VoidCallbackWithParam<String?> onSave;
  final VoidCallbackWithParam<String?> onChange;
  const SubdivisionTextField({
    Key? key,
    required this.onSave,
    this.maxLines = 1,
    required this.hint,
    this.initValue,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initValue,
      textInputAction:
          maxLines == 1 ? TextInputAction.next : TextInputAction.newline,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      enableSuggestions: true,
      minLines: 1,
      maxLines: maxLines,
      keyboardType:maxLines == 1? TextInputType.text:TextInputType.multiline,
      onChanged: onChange,
      onSaved: onSave,
      validator: (subdivisionText) =>
          _isValidSubdivisionText(subdivisionText, context),
      decoration: InputDecoration(
        hintText: hint,
      ),
    );
  }
}

String? _isValidSubdivisionText(String? subdivisionText, BuildContext context) {
  if (subdivisionText == null || subdivisionText.isEmpty) {
    return context.loc.enter_a_value;
  }
  return null;
}

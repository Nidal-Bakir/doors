import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:flutter/material.dart';

class ResumeHeadLineTextField extends StatelessWidget {
  final VoidCallbackWithParam<String?> onSave;
  final String? initValue;

  const ResumeHeadLineTextField({
    Key? key,
    required this.onSave,
    this.initValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initValue,
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      enableSuggestions: true,
      keyboardType: TextInputType.text,
      onSaved: onSave,
      decoration: InputDecoration(
        hintText: context.loc.resume_head_line,
      ),
    );
  }
}

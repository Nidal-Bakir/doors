import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:flutter/material.dart';

class SectionNameTxtField extends StatelessWidget {
  final VoidCallbackWithParam<String?> onSave;
  final VoidCallbackWithParam<String?> onChange;
  final String? initValue;

  const SectionNameTxtField({
    Key? key,
    required this.onSave,
    required this.onChange,
    this.initValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: (initValue?.isEmpty ?? true) ? null : initValue,
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      enableSuggestions: true,
      keyboardType: TextInputType.text,
      onSaved: onSave,
      onChanged: onChange,
      validator: (sectionName) => _isValidSectionName(sectionName, context),
      decoration: InputDecoration(
        hintText: context.loc.section_name,
      ),
    );
  }

  String? _isValidSectionName(String? sectionName, BuildContext context) {
    if (sectionName == null || sectionName.isEmpty) {
      return context.loc.enter_section_name;
    }
    return null;
  }
}

import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:flutter/material.dart';

class CurrentResidenceTextFormField extends StatelessWidget {
  final VoidCallbackWithParam<String> onSave;
  const CurrentResidenceTextFormField({
    Key? key,
    required this.onSave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      enableSuggestions: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.streetAddress,
      onSaved: (currentResidence) => onSave(currentResidence!.trim()),
      validator: (currentResidence) =>
          _isValidCurrentResidenceText(currentResidence, context),
      decoration: InputDecoration(
        hintText: context.loc.current_residence,
      ),
    );
  }

  String? _isValidCurrentResidenceText(
    String? currentResidence,
    BuildContext context,
  ) {
    currentResidence = currentResidence?.trim();
    if (currentResidence == null || currentResidence.isEmpty) {
      return context.loc.enter_your_current_residence;
    }
    return null;
  }
}

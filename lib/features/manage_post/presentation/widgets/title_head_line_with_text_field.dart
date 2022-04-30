import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:flutter/material.dart';

class TitleHeadLineWithTextField extends StatelessWidget {
  final Function(String? title) onSave;
  final String initText;

  const TitleHeadLineWithTextField({
    Key? key,
    required this.onSave,
    required this.initText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LineWithTextOnRow(text: context.loc.title),
        TextFormField(
          initialValue: initText,
          textInputAction: TextInputAction.next,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          enableSuggestions: true,
          keyboardType: TextInputType.name,
          validator: (title) => isValidTitle(title, context),
          onSaved: onSave,
        ),
      ],
    );
  }

  String? isValidTitle(String? title, BuildContext context) {
    if (title == null || title.isEmpty) {
      return context.loc.enter_a_service_title;
    } else if (title.length < 3) {
      return context.loc.at_least_three_character_long;
    }

    return null;
  }
}

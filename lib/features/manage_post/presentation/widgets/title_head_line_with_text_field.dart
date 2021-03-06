import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:flutter/material.dart';

class TitleHeadLineWithTextField extends StatelessWidget {
  final Function(String title) onSave;
  final String initTitle;

  const TitleHeadLineWithTextField({
    Key? key,
    required this.onSave,
    required this.initTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LineWithTextOnRow(text: context.loc.title),
        TextFormField(
          initialValue: initTitle,
          textInputAction: TextInputAction.next,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          enableSuggestions: true,
          keyboardType: TextInputType.name,
          validator: (title) => isValidTitle(title, context),
          onSaved: (title) => onSave(title!),
        ),
      ],
    );
  }

  String? isValidTitle(String? title, BuildContext context) {
    if (title == null || title.isEmpty) {
      return context.loc.enter_a_title;
    } else if (title.length < 3) {
      return context.loc.at_least_three_character_long;
    }

    return null;
  }
}

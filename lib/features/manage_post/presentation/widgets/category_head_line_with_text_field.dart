import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:flutter/material.dart';

class CategoryHeadLineWithTextField extends StatelessWidget {
  final Function(String? category) onSave;
  final String initText;

  const CategoryHeadLineWithTextField({
    Key? key,
    required this.onSave,
    required this.initText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LineWithTextOnRow(
          text: context.loc.category,
        ),
        TextFormField(
          initialValue: initText,
          textInputAction: TextInputAction.next,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          enableSuggestions: true,
          keyboardType: TextInputType.name,
          validator: (category) => isValidCategory(category, context),
          onSaved: onSave,
        ),
      ],
    );
  }

  String? isValidCategory(String? category, BuildContext context) {
    if (category == null || category.isEmpty) {
      return context.loc.specific_a_category;
    } else if (category.length < 2) {
      return context.loc.short_category;
    }
    return null;
  }
}

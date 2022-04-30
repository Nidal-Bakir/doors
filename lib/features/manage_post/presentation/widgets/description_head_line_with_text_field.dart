import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:flutter/material.dart';

class DescriptionHeadLineWithTextField extends StatefulWidget {
  final String initDescription;
  final void Function(String description) onDescriptionSave;
  const DescriptionHeadLineWithTextField({
    Key? key,
    required this.onDescriptionSave,
    required this.initDescription,
  }) : super(key: key);

  @override
  State<DescriptionHeadLineWithTextField> createState() =>
      _DescriptionHeadLineWithTextFieldState();
}

class _DescriptionHeadLineWithTextFieldState
    extends State<DescriptionHeadLineWithTextField> {
  late var _description = widget.initDescription;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LineWithTextOnRow(
          text: context.loc.description,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 4),
          child: TextFormField(
            initialValue: widget.initDescription,
            textInputAction: TextInputAction.newline,
            keyboardType: TextInputType.multiline,
            enableSuggestions: true,
            decoration: InputDecoration(
              counterText:
                  _description.length > 30 ? null : '${_description.length}/30',
              counterStyle:
                  TextStyle(color: Theme.of(context).colorScheme.error),
              hintText: context.loc.what_do_you_need_or_offer,
            ),
            validator: (description) =>
                isValidDescription(description, context),
            maxLines: 3,
            onChanged: (description) {
              setState(() {
                _description = description;
              });
            },
            onSaved: (description) {
              widget.onDescriptionSave(description ?? '');
            },
          ),
        ),
      ],
    );
  }

  String? isValidDescription(String? description, BuildContext context) {
    if (description == null || description.isEmpty) {
      return context.loc.specific_a_category;
    } else if (description.length < 30) {
      return context.loc.at_least_30_character_long;
    }
    return null;
  }
}

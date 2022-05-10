import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:flutter/material.dart';

class BioHeadLineWithTextField extends StatelessWidget {
  final void Function(String? bio) onBioSave;
  final String? initBio;
  const BioHeadLineWithTextField({
    Key? key,
    required this.onBioSave,
    this.initBio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LineWithTextOnRow(
          text: context.loc.bio,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 4),
          child: TextFormField(
            textInputAction: TextInputAction.newline,
            keyboardType: TextInputType.multiline,
            maxLength: 200,
            initialValue: initBio,
            decoration: InputDecoration(
              hintText: context.loc.what_do_you_do,
            ),
            maxLines: 3,
            onSaved: onBioSave,
          ),
        ),
      ],
    );
  }
}

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:doors/features/manage_post/presentation/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart' hide DropdownButtonFormField;

class PostTypeHeadLineWithDropdownButtonFormField extends StatefulWidget {
  final Function(PostType? postType) onSave;
  final PostType initPostType;
  const PostTypeHeadLineWithDropdownButtonFormField({
    Key? key,
    required this.onSave,
    required this.initPostType,
  }) : super(key: key);

  @override
  State<PostTypeHeadLineWithDropdownButtonFormField> createState() =>
      _PostTypeHeadLineWithDropdownButtonFormFieldState();
}

class _PostTypeHeadLineWithDropdownButtonFormFieldState
    extends State<PostTypeHeadLineWithDropdownButtonFormField> {
  late var _postType = widget.initPostType;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LineWithTextOnRow(text: context.loc.type),
        CustomDropdownButtonFormField<PostType>(
          iconEnabledColor: Colors.black,
          value: _postType,
          items: [
            DropdownMenuItem<PostType>(
              child: Text(context.loc.need),
              value: PostType.need,
            ),
            DropdownMenuItem<PostType>(
              child: Text(context.loc.offer),
              value: PostType.offer,
            )
          ],
          onSaved: (postType) {
            widget.onSave(postType);
          },
          onChanged: (postType) {
            setState(() {
              _postType = postType ?? PostType.need;
            });
          },
        ),
      ],
    );
  }
}

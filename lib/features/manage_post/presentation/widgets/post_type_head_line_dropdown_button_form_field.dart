import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/custom_dropdown/custom_drop_down.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:flutter/material.dart' hide DropdownButtonFormField;

class PostTypeHeadLineWithDropdownButtonFormField extends StatefulWidget {
  final Function(ServiceType? postType) onSave;
  final ServiceType initPostType;
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
       crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LineWithTextOnRow(text: context.loc.type),
        CustomDropdownButtonFormField<ServiceType>(
          iconEnabledColor: Colors.black,
          value: _postType,
          items: [
            DropdownMenuItem<ServiceType>(
              child: Text(context.loc.need),
              value: ServiceType.need,
            ),
            DropdownMenuItem<ServiceType>(
              child: Text(context.loc.offer),
              value: ServiceType.offer,
            )
          ],
          onSaved: (postType) {
            widget.onSave(postType);
          },
          onChanged: (postType) {
            setState(() {
              _postType = postType ?? ServiceType.need;
            });
          },
        ),
      ],
    );
  }
}

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/custom_dropdown/custom_drop_down.dart';
import 'package:flutter/material.dart' hide DropdownButtonFormField;

class PostTypeDropdownButtonFormField extends StatefulWidget {
  final Function(ServiceType? postType) onSave;

  const PostTypeDropdownButtonFormField({
    Key? key,
    required this.onSave,
  }) : super(key: key);

  @override
  State<PostTypeDropdownButtonFormField> createState() =>
      _PostTypeDropdownButtonFormFieldState();
}

class _PostTypeDropdownButtonFormFieldState
    extends State<PostTypeDropdownButtonFormField> {
    var _postType = 'ALL';
  @override
  Widget build(BuildContext context) {
    final _onPrimaryColor = Theme.of(context).colorScheme.onPrimary;
    return CustomDropdownButtonFormField<String>(
      dropdownColor: _onPrimaryColor,
      decoration: InputDecoration(
        fillColor: _onPrimaryColor,
      ),
      iconEnabledColor: Colors.black,
      value: _postType,
      items: [
        DropdownMenuItem<String>(
          child: Text(context.loc.all),
          value: 'ALL',
        ),
        DropdownMenuItem<String>(
          child: Text(context.loc.need),
          value: ServiceType.need.name,
        ),
        DropdownMenuItem<String>(
          child: Text(context.loc.offer),
          value: ServiceType.offer.name,
        )
      ],
      onSaved: (postType) {
        if (postType == 'ALL') {
          widget.onSave(null);
          return;
        }
        widget.onSave(
            ServiceType.values.firstWhere((element) => element.name == postType));
      },
      onChanged: (postType) {
        setState(() {
          _postType = postType ?? 'ALL';
        });
      },
    );
  }
}

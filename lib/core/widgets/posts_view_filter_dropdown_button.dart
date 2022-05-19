import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:doors/core/widgets/custom_dropdown/custom_drop_down.dart';
import 'package:flutter/material.dart';

class PostsViewFilterDropdownButton extends StatelessWidget {
  final PostsViewFilter currentPostsViewFilter;
  final Color? fillColor;
  final VoidCallbackWithParam<PostsViewFilter> onViewChange;
  const PostsViewFilterDropdownButton({
    Key? key,
    required this.currentPostsViewFilter,
    required this.onViewChange,
    this.fillColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomDropdownButtonFormField<PostsViewFilter>(
      iconEnabledColor: Colors.black,
      dropdownColor: fillColor,
      decoration: InputDecoration(fillColor: fillColor),
      value: currentPostsViewFilter,
      items: [
        DropdownMenuItem(
          child: Text(context.loc.services),
          value: PostsViewFilter.services,
        ),
        DropdownMenuItem(
          child: Text(context.loc.jobs),
          value: PostsViewFilter.jobs,
        ),
      ],
      onChanged: (postsView) {
        onViewChange(postsView!);
      },
    );
  }
}

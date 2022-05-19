import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';

import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:doors/core/widgets/posts_view_filter_dropdown_button.dart';
import 'package:flutter/material.dart';

class CurrentFavoritePostsLabelWithPostsViewFilter extends StatelessWidget {
  final PostsViewFilter currentPostsViewFilter;
  final VoidCallbackWithParam<PostsViewFilter> onViewChange;

  const CurrentFavoritePostsLabelWithPostsViewFilter({
    Key? key,
    required this.onViewChange,
    required this.currentPostsViewFilter,
  }) : super(key: key);

  String label(BuildContext context) {
    if (currentPostsViewFilter == PostsViewFilter.services) {
      return context.loc.favorite_service;
    } else {
      return context.loc.favorite_jobs;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 2,
              child: LineWithTextOnRow(
                text: label(context),
              ),
            ),
            Flexible(
              child: PostsViewFilterDropdownButton(
                fillColor: Theme.of(context).colorScheme.onPrimary,
                currentPostsViewFilter: currentPostsViewFilter,
                onViewChange: onViewChange,
              ),
            )
          ],
        ),
      ),
    );
  }
}

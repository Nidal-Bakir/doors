import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:doors/core/widgets/posts_view_filter_dropdown_button.dart';
import 'package:flutter/material.dart';

class CurrentPostsViewLabelWithPostsViewFilter extends StatelessWidget {
  final String currentUserId;
  final User visitedUser;
  final PostsViewFilter currentPostsViewFilter;

  final VoidCallbackWithParam<PostsViewFilter> onViewChange;
  const CurrentPostsViewLabelWithPostsViewFilter({
    Key? key,
    required this.currentUserId,
    required this.onViewChange,
    required this.currentPostsViewFilter,
    required this.visitedUser,
  }) : super(key: key);

  String label(BuildContext context) {
    // is current user profile
    if (currentUserId == visitedUser.userId) {
      if (currentPostsViewFilter == PostsViewFilter.services) {
        return context.loc.my_service;
      } else {
        return context.loc.my_jop_offers;
      }
    } else {
      if (currentPostsViewFilter == PostsViewFilter.services) {
        return context.loc.services;
      } else {
        return context.loc.job_offers;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: visitedUser.isCompanyAccount ? 0 : 8,
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
            if (visitedUser.isCompanyAccount)
              Flexible(
                child: PostsViewFilterDropdownButton(
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

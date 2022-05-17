import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:doors/core/widgets/custom_dropdown/custom_drop_down.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:flutter/material.dart';

class CurrentPostsViewWithViewFilter extends StatelessWidget {
  final String currentUserId;
  final User visitedUser;
  final PostsViewFilter currentPostsViewFilter;

  final VoidCallbackWithParam<PostsViewFilter> onViewChange;
  const CurrentPostsViewWithViewFilter({
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
                flex: 1,
                child: CustomDropdownButtonFormField<PostsViewFilter>(
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
                ),
              )
          ],
        ),
      ),
    );
  }
}

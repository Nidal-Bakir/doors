import 'dart:collection';

import 'package:doors/core/features/post/presentation/screen/post_screen.dart';
import 'package:doors/core/features/post/presentation/widgets/post_card_item.dart';
import 'package:flutter/material.dart';

class PostsSliverList extends StatelessWidget {
  final UnmodifiableListView posts;
  const PostsSliverList({Key? key, required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
         

          final _post = posts[index];
          return PostCardItem(
            onTap: () {
              Navigator.of(context).pushNamed(
                PostScreen.routeName,
                arguments: _post,
              );
            },
            author: _post.author,
            maxCost: _post.maxCost,
            minCost: _post.maxCost,
            postCostCurrency: _post.postCostCurrency,
            postDescription: _post.postDescription,
            postHumanReadableLocation: _post.postHumanReadableLocation,
            postImage: _post.postImage,
            postKeywords: _post.postKeywords,
            postLocation: _post.postLocation,
            postTitle: _post.postTitle,
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

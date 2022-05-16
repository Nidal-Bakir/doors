import 'dart:collection';

import 'package:doors/core/features/post/presentation/screen/post_screen.dart';
import 'package:doors/core/features/post/presentation/widgets/post_card_item.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/core/models/post.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:flutter/material.dart';

class PostsSliverList extends StatelessWidget {
  final UnmodifiableListView<Post> posts;
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
            maxCost: _maxCost(_post),
            minCost: _minCost(_post),
            postCostCurrency: _postCostCurrency(_post),
            postDescription: _post.postDescription,
            postHumanReadableLocation: _post.postHumanReadableLocation,
            postImage: _post.postImage,
            postKeywords: _keywords(_post),
            postLocation: _post.postLocation,
            postTitle: _post.postTitle,
          );
        },
        childCount: posts.length,
      ),
    );
  }

  Set<String> _keywords(Post _post) => _post is ServicePost
      ? _post.postKeywords
      : (_post as JobPost).jobTypes.map((e) => e.name).toSet();

  String? _postCostCurrency(Post _post) =>
      _post is ServicePost ? _post.postCostCurrency : null;

  double? _minCost(Post _post) => _post is ServicePost ? _post.minCost : null;

  double? _maxCost(Post _post) => _post is ServicePost ? _post.maxCost : null;
}

import 'package:doors/core/enums/enums.dart';
import 'package:doors/features/recent_posts/presentation/widgets/recent_posts_list.dart';
import 'package:flutter/material.dart';

class TestScree extends StatelessWidget {
  const TestScree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Text('posts'),
        actions: [
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(child: const RecentPostsList(postType: PostType.offer)),
    );
  }
}

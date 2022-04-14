import 'package:doors/core/features/post/model/post.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  static const routeName = '/post-screen';
  final Post post;
  const PostScreen({Key? key, required this.post}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

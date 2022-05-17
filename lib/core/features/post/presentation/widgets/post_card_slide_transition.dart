import 'package:doors/core/features/post/presentation/widgets/post_card_item.dart';
import 'package:flutter/widgets.dart';

class PostCardSlideTransition extends StatefulWidget {
  final PostCardItem postCardItem;
  const PostCardSlideTransition({
    Key? key,
    required this.postCardItem,
  }) : super(key: key);

  @override
  State<PostCardSlideTransition> createState() =>
      _PostCardSlideTransitionState();
}

class _PostCardSlideTransitionState extends State<PostCardSlideTransition>
    with SingleTickerProviderStateMixin {
  late final _slidController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );
  late final _slidAnimation = Tween<Offset>(
    begin: const Offset(0.0, 0.2),
    end: Offset.zero,
  ).animate(
    CurveTween(curve: Curves.easeInOutCubic).animate(
      _slidController,
    ),
  );

  @override
  void initState() {
    _slidController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _slidController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slidAnimation,
      child: widget.postCardItem,
    );
  }
}

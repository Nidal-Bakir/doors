import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollToLatestMessageFAB extends StatefulWidget {
  final ScrollController chatScrollController;
  const ScrollToLatestMessageFAB({Key? key, required this.chatScrollController})
      : super(key: key);

  @override
  State<ScrollToLatestMessageFAB> createState() =>
      _ScrollToLatestMessageFABState();
}

class _ScrollToLatestMessageFABState extends State<ScrollToLatestMessageFAB>
    with SingleTickerProviderStateMixin {
  late final _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );

  late final _slideAnimation = Tween<Offset>(
    begin: Offset(
      1.5 * (Directionality.of(context) == TextDirection.rtl ? -1 : 1),
      0,
    ),
    end: Offset.zero,
  ).animate(
    CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInCubic,
    ),
  );

  @override
  void initState() {
    widget.chatScrollController.addListener(_chatScrollControllerListener);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    widget.chatScrollController.removeListener(_chatScrollControllerListener);
    super.dispose();
  }

  void _chatScrollControllerListener() {
   
    if (widget.chatScrollController.position.pixels >= 200) {
      if (widget.chatScrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (_animationController.status == AnimationStatus.dismissed) {
          _animationController.forward();
        }
      } else {
        if (_animationController.status == AnimationStatus.completed) {
          _animationController.reverse();
        }
      }
    } else {
      if (_animationController.status == AnimationStatus.forward ||
          _animationController.status == AnimationStatus.completed) {
        _animationController.reverse();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return SlideTransition(
      position: _slideAnimation,
      child: Container(
        margin: const EdgeInsets.only(bottom: 50),
        child: ClipOval(
          child: Material(
            color: _theme.colorScheme.primary,
            elevation: 10,
            child: InkWell(
              onTap: _scrollToLatestMessage,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.keyboard_double_arrow_down_rounded,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _scrollToLatestMessage() async {
    await widget.chatScrollController.animateTo(
      widget.chatScrollController.position.minScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInCubic,
    );
  }
}

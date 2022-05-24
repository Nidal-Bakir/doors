import 'package:flutter/widgets.dart';

class CustomSlideTransition extends StatefulWidget {
  final Widget child;
  const CustomSlideTransition({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<CustomSlideTransition> createState() =>
      _CustomSlideTransitionState();
}

class _CustomSlideTransitionState extends State<CustomSlideTransition>
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
      child: widget.child,
    );
  }
}

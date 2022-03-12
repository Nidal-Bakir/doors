import 'package:doors/injection_container/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class RestartApp extends StatefulWidget {
  final Widget child;

  const RestartApp({Key? key, required this.child}) : super(key: key);

  static void restart(BuildContext context) {
    context.findRootAncestorStateOfType<_RestartAppState>()!._restart();
  }

  @override
  _RestartAppState createState() => _RestartAppState();
}

class _RestartAppState extends State<RestartApp> {
  var _key = UniqueKey();

  void _restart() async {
    await GetIt.I.reset();
    await init(forRestart: true);
    setState(() {
      _key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _key,
      child: widget.child,
    );
  }
}

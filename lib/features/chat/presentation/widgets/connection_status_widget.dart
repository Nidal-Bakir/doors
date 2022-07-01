import 'dart:async';

import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/features/chat/presentation/managers/connection_status_bloc/connection_status_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ConnectionStatusWidget extends StatefulWidget {
  const ConnectionStatusWidget({Key? key}) : super(key: key);

  @override
  State<ConnectionStatusWidget> createState() => _ConnectionStatusWidgetState();
}

class _ConnectionStatusWidgetState extends State<ConnectionStatusWidget>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );

  late final _sizeTransition =
      Tween<double>(begin: 0, end: 1).animate(_controller);

  Timer? _connectedTimerUIVisibility;

  @override
  void dispose() {
    _connectedTimerUIVisibility?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return BlocProvider<ConnectionStatusBloc>(
      create: (context) => GetIt.I.get<ConnectionStatusBloc>(),
      child: Builder(
        builder: (context) {
          return BlocConsumer<ConnectionStatusBloc, ConnectionStatusState>(
            listener: (context, state) {
              _connectedTimerUIVisibility?.cancel();
              state.when(connecting: () {
                _controller.forward();
              }, connected: () {
                _connectedTimerUIVisibility = Timer(
                  const Duration(seconds: 3),
                  () {
                    _controller.reverse();
                  },
                );
              });
            },
            builder: (context, state) {
              return state.when(
                connecting: () {
                  return SizeTransition(
                    axis: Axis.vertical,
                    sizeFactor: _sizeTransition,
                    child: Container(
                      height: 20,
                      width: double.infinity,
                      color: _theme.colorScheme.onPrimary,
                      child: const _ConnectingTextWithAnimation(),
                    ),
                  );
                },
                connected: () {
                  return SizeTransition(
                    sizeFactor: _sizeTransition,
                    child: Container(
                      height: 20,
                      width: double.infinity,
                      color: _theme.colorScheme.onPrimary,
                      child: Text(
                        context.loc.connected,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class _ConnectingTextWithAnimation extends StatefulWidget {
  const _ConnectingTextWithAnimation({Key? key}) : super(key: key);

  @override
  State<_ConnectingTextWithAnimation> createState() =>
      __ConnectingTextWithAnimationState();
}

class __ConnectingTextWithAnimationState
    extends State<_ConnectingTextWithAnimation> {
  var _dots = '';
  Timer? _connectingDotsTimerAnimation;
  @override
  void initState() {
    _connectingDotsTimerAnimation =
        Timer.periodic(const Duration(milliseconds: 500), (timer) {
      if (mounted) {
        setState(() {
          if (_dots.length < 3) {
            _dots += '.';
          } else {
            _dots = '';
          }
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _connectingDotsTimerAnimation?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late var _children = [
      Text(
        context.loc.connecting,
      ),
      Text(
        _dots,
      ),
    ];

    if (Directionality.of(context) == TextDirection.rtl) {
      _children = _children.reversed.toList();
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _children,
    );
  }
}

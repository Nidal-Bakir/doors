import 'dart:async';

import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/user_location/presentation/managers/user_location_bloc/user_location_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrentUserLocationUsingGPSIcon extends StatefulWidget {
  final UserLocationState userLocationState;
  final Color? backgroundColor;
  const CurrentUserLocationUsingGPSIcon(
      {Key? key, required this.userLocationState, this.backgroundColor})
      : super(key: key);

  @override
  State<CurrentUserLocationUsingGPSIcon> createState() =>
      _CurrentUserLocationUsingGPSIconState();
}

class _CurrentUserLocationUsingGPSIconState
    extends State<CurrentUserLocationUsingGPSIcon> {
  Timer? _timer;
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant CurrentUserLocationUsingGPSIcon oldWidget) {
    if (widget.userLocationState is UserLocationInProgress) {
      _timer = Timer.periodic(const Duration(milliseconds: 600), (timer) {
        if (mounted) {
          setState(() {
            if (_crossFadeState == CrossFadeState.showFirst) {
              _crossFadeState = CrossFadeState.showSecond;
            } else {
              _crossFadeState = CrossFadeState.showFirst;
            }
          });
        }
      });
    } else {
      _timer?.cancel();
      if (mounted) {
        setState(() {
          _crossFadeState = CrossFadeState.showFirst;
        });
      }
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.userLocationState is! UserLocationInProgress) {
      _crossFadeState = CrossFadeState.showFirst;
    }
    return Container(
      margin: const EdgeInsets.only(left: 4),
      decoration: BoxDecoration(
          color:
              widget.backgroundColor ?? Theme.of(context).colorScheme.onSurface,
          borderRadius: BorderRadius.circular(15)),
      child: IconButton(
        tooltip: context.loc.my_current_location,
        padding: EdgeInsets.zero,
        onPressed: widget.userLocationState is UserLocationInProgress
            ? null
            : () {
                context.read<UserLocationBloc>().add(
                    const UserLocationDetermineUserLocationUsingGPSRequested());
              },
        icon: AnimatedCrossFade(
          crossFadeState: _crossFadeState,
          firstChild: const Icon(Icons.my_location_rounded),
          secondChild: const Icon(Icons.location_searching_rounded),
          duration: const Duration(milliseconds: 600),
        ),
      ),
    );
  }
}

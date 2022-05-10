import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:flutter/material.dart';

class PrivateSwitch extends StatefulWidget {
  final void Function(bool privateStatus) onPrivateStatuesChanged;
  final bool initPrivateStatus;

  const PrivateSwitch({
    Key? key,
    required this.initPrivateStatus,
    required this.onPrivateStatuesChanged,
  }) : super(key: key);

  @override
  State<PrivateSwitch> createState() => _PrivateSwitchState();
}

class _PrivateSwitchState extends State<PrivateSwitch> {
  late var _isPrivate = widget.initPrivateStatus;
  @override
  Widget build(BuildContext context) {
    final _colorScheme = Theme.of(context).colorScheme;
    return Tooltip(
      message: _isPrivate
          ? context.loc.no_one_can_see_it
          : context.loc.any_one_can_see_it,
      child: Switch(
        value: _isPrivate,
        activeThumbImage: const AssetImage('assets/icons/lock.png'),
        inactiveThumbImage: const AssetImage('assets/icons/open-lock.png'),
        onChanged: (isPrivate) {
          setState(() {
            _isPrivate = !_isPrivate;
          });
          widget.onPrivateStatuesChanged(_isPrivate);
        },
        activeColor: _colorScheme.primary,
      ),
    );
  }
}

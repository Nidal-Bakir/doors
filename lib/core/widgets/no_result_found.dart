import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:flutter/material.dart';

class NoResultFound extends StatelessWidget {
  const NoResultFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            'assets/images/no-result.png',
            width: 300,
          ),
          Text(
            context.loc.no_result_found,
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}

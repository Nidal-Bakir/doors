import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:flutter/material.dart';

class NoChatToShow extends StatelessWidget {
  const NoChatToShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            'assets/images/messaging.png',
            width: 300,
          ),
          Text(
            context.loc.no_chats_to_show,
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: Text(
              context.loc
                  .you_can_chat_with_any_one_about_service_they_provide_or_offer,
              style: Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

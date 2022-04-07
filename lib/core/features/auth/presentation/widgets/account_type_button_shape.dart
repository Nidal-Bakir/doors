import 'package:flutter/material.dart';

class AccountTypeButtonShape extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;
  const AccountTypeButtonShape({
    Key? key,
    required this.label,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Theme.of(context).colorScheme.primary,
      shape: const RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: SizedBox(
        height: 65,
        width: 250,
        child: InkWell(onTap: onTap,
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Flexible(
                fit: FlexFit.tight,
                flex: 3,
                child: Card(
                  margin: const EdgeInsets.all(2),
                  shape: const RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  elevation: 0.0,
                  child: FittedBox(
                    child: Icon(
                      icon,
                    ),
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 4,
                child: Center(
                  child: Text(
                    label,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration(seconds: 2))
        // .then((value) => Navigator.of(context).pushNamed('routeName'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
          child: SizedBox.expand(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 1),
            Image.asset('assets/images/check.png', width: 320),
            const Spacer(
              flex: 2,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text('DOORS company 2022 all right reserved '),
            ),
          ],
        ),
      )),
    );
  }
}

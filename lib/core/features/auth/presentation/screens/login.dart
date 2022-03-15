import 'package:doors/core/features/auth/model/user.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class LogInScreen extends StatefulWidget {
  static const routeName = '/login';

  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  void test() async {
    //
    // cUser.logout();

    // return;
    // User user = User('nida2l@gamil.com', 'abc123', 'nida2l@gamil.com')
    //   ..bio = 'bio'
    //   ..accountType = AccountType.user
    //   ..name = 'nidal'
    //   ..phoneNumber = '0966577043'
    //   ..userLocation = ParseGeoPoint();
    // await user.signUp();

    // var res = await user.signUp();
    // var result = res.result;
    // user = (await user.login()).result as User;

    // cUser.logout();

    // await ParseUser.forQuery().loginAnonymous();
    User cUser = (await ParseUser.currentUser()) as User;
    print(cUser);

    // print(cUser.toString());
    // User fromServerUser = (await cUser.getUpdatedUser()).result as User;
    // print(fromServerUser);
    //
    // var runTime = cUser.runtimeType;
    //
    // QueryBuilder queryBuilder = QueryBuilder(ParseUser.forQuery());
    // queryBuilder.whereEqualTo('email', 'nidal@gamil.com');
    //
    // ParseObject? newUser = await queryBuilder.first();
    //
    // var e = newUser?.get('email');
    // var le = newUser?.get('userLocation') as ParseGeoPoint;
    // print('end');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: TextButton(onPressed: test, child: Text('test')),
    ));
  }
}

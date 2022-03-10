import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:doors/core/auth/model/user.dart';
import 'package:doors/core/subscription/model/payment.dart';
import 'package:doors/parse_keys.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

Future<void> parseInit() async {
  await Parse().initialize(
    ParseKeys.AppID, ParseKeys.ServerURL,
    clientKey: ParseKeys.ClientKey,
    // Required for authentication and ACL
    autoSendSessionId: true,
    connectivityProvider: CustomParseConnectivityProvider(),
    registeredSubClassMap: <String, ParseObjectConstructor>{
      UserSubscription.keyClassName: () => UserSubscription(),
    },
    //TODO: remove the debug mode
    debug: true,
    coreStore: await CoreStoreSembastImp.getInstance(),
    parseUserConstructor: (
      String? username,
      String? password,
      String? emailAddress, {
      String? sessionToken,
      bool? debug,
      ParseClient? client,
    }) =>
        User(
      username,
      password,
      emailAddress,
      sessionToken: sessionToken,
      debug: debug,
      client: client,
    ),
    clientCreator: ({
      bool? sendSessionId,
      SecurityContext? securityContext,
    }) =>
        ParseDioClient(
      sendSessionId: sendSessionId!,
      securityContext: securityContext,
    ),
  );
}

class CustomParseConnectivityProvider extends ParseConnectivityProvider {
  @override
  Future<ParseConnectivityResult> checkConnectivity() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if ((connectivityResult == ConnectivityResult.wifi ||
            connectivityResult == ConnectivityResult.mobile) &&
        (await InternetConnectionChecker().hasConnection)) {
      if (connectivityResult == ConnectivityResult.wifi) {
        return ParseConnectivityResult.wifi;
      } else {
        return ParseConnectivityResult.mobile;
      }
    }
    return ParseConnectivityResult.none;
  }

  @override
  Stream<ParseConnectivityResult> get connectivityStream async* {
    await for (var connectivityResult in Connectivity().onConnectivityChanged) {
      if ((connectivityResult == ConnectivityResult.wifi ||
              connectivityResult == ConnectivityResult.mobile) &&
          (await InternetConnectionChecker().hasConnection)) {
        if (connectivityResult == ConnectivityResult.wifi) {
          yield ParseConnectivityResult.wifi;
        } else {
          yield ParseConnectivityResult.mobile;
        }
      }
      yield ParseConnectivityResult.none;
    }
  }
}

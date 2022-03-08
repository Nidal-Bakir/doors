import 'dart:io';

import 'package:doors/core/auth/model/payment.dart';
import 'package:doors/core/auth/model/user.dart';
import 'package:doors/parse_keys.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

Future<void> parseInit() async {
  await Parse().initialize(
    ParseKeys.AppID, ParseKeys.ServerURL,
    clientKey: ParseKeys.ClientKey,
    // Required for authentication and ACL
    autoSendSessionId: true,
    // connectivityProvider: ParseConnectivityProvider(),
    registeredSubClassMap: <String, ParseObjectConstructor>{
      'UserSubscription': () => UserSubscription(),
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

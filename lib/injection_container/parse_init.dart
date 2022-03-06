import 'dart:io';
import 'package:doors/parse_keys.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

Future<void> parseInit() async {
  await Parse().initialize(
    ParseKeys.AppID, ParseKeys.ServerURL,
    clientKey: ParseKeys.ClientKey,
    autoSendSessionId: true, // Required for authentication and ACL
    debug: true, //TODO: remove the debug mode
    coreStore: await CoreStoreSembastImp.getInstance(),
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

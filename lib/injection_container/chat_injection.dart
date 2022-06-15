import 'package:doors/core/models/user.dart';
import 'package:doors/features/chat/data/chat_local_data_source/database/local_database.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

final di = GetIt.I;

/// ### make sure to initialize the parse server before init the chat
Future<void> chatInit() async {
  final currentUser = await ParseUser.currentUser();
  if (currentUser == null) {
    return;
  }

  if ((currentUser as User).isAnonymousAccount) {
    return;
  }

  // data sources

  di.registerLazySingleton<LocalDatabase>(
    () => LocalDatabase(currentUser.userId),
    dispose: (localDatabase) {
      localDatabase.closeCurrentDataBase();
    },
  );
}

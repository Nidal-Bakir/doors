import 'dart:async';

import 'package:doors/features/chat/data/chat_local_data_source/database/database_tables.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class LocalDatabase {
  final String currentUserId;

  LocalDatabase(this.currentUserId);

  Database? _database;
  FutureOr<Database> get database async =>
      _database ??= await _openLocalDatabase();

  Future<void> closeCurrentDataBase() async {
    await _database?.close();
  }

  Future<Database> _openLocalDatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, '$currentUserId.db');

    return await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(LocalChatTable.tableCreationCommand);
      await db.execute(LocalChatUserInfo.tableCreationCommand);
    });
  }
}

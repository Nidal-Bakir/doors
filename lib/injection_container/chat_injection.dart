import 'package:doors/core/models/user.dart';
import 'package:doors/features/chat/data/chat_local_data_source/data_source/chat_local_data_source.dart';
import 'package:doors/features/chat/data/chat_local_data_source/data_source/chat_users_local_data_source.dart';
import 'package:doors/features/chat/data/chat_local_data_source/database/local_database.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/data/chat_remote_data_source/data_source/chat_remote_data_source.dart';
import 'package:doors/features/chat/data/chat_remote_data_source/data_source/chat_users_remote_data_source.dart';
import 'package:doors/features/chat/data/process/media_message_process_manager.dart';
import 'package:doors/features/chat/data/process/messaging_process_base.dart';
import 'package:doors/features/chat/data/process/send_text_message_process_manager.dart';
import 'package:doors/features/chat/presentation/managers/chat_bloc/chat_bloc.dart';
import 'package:doors/features/chat/presentation/managers/connection_status_bloc/connection_status_bloc.dart';
import 'package:doors/features/chat/presentation/managers/download_received_media_message_bloc/download_received_media_message_bloc.dart';
import 'package:doors/features/chat/presentation/managers/messaging_bloc/messaging_bloc.dart';
import 'package:doors/features/chat/presentation/managers/send_media_message_bloc/send_media_message_bloc.dart';
import 'package:doors/features/chat/presentation/managers/send_text_message_bloc/send_text_message_bloc.dart';
import 'package:doors/features/chat/repository/chat_repository.dart';
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

  // blocs
  di.registerFactory<MessagingBloc>(
    () => MessagingBloc(di.get()),
  );

  di.registerFactory<ConnectionStatusBloc>(
    () => ConnectionStatusBloc(di.get()),
  );

  di.registerFactoryParam<ChatBloc, MessagingBloc, String>(
    (messagingBloc, userId) => ChatBloc(di.get(), messagingBloc, userId),
  );

  di.registerFactoryParam<SendTextMessageBloc, LocalChatMessage, void>(
    (textMessage, _) => SendTextMessageBloc(di.get(), textMessage),
  );

  di.registerFactoryParam<SendMediaMessageBloc, LocalChatMessage, void>(
    (mediaMessage, _) => SendMediaMessageBloc(di.get(), mediaMessage),
  );
  
  di.registerFactoryParam<DownloadReceivedMediaMessageBloc, LocalChatMessage,
      void>(
    (mediaMessage, _) =>
        DownloadReceivedMediaMessageBloc(di.get(), mediaMessage),
  );

  // repository
  di.registerLazySingleton<ChatRepository>(
    () => ChatRepository(
      di.get(),
      di.get(),
      di.get(),
      di.get(),
      di.get(instanceName: 'SendTextMessageProcessManager'),
      di.get(instanceName: 'MediaMessageProcessManager'),
    ),
    dispose: (chatRepository) async {
      await chatRepository.dispose();
    },
  );

  // processes
  di.registerLazySingleton<MessagingProcessBase>(
    () => SendTextMessageProcessManager(
      di.get(),
      di.get(),
      di.get(),
    ),
    instanceName: 'SendTextMessageProcessManager',
  );

  di.registerLazySingleton<MessagingProcessBase>(
    () => MediaMessageProcessManager(
      di.get(),
      di.get(),
      di.get(),
    ),
    instanceName: 'MediaMessageProcessManager',
  );

  // data sources
  di.registerLazySingleton<ChatLocalDataSource>(
    () => ChatLocalDataSourceImpl(di.get()),
  );
  di.registerLazySingleton<ChatUsersLocalDataSource>(
    () => ChatUsersLocalDataSourceImpl(di.get()),
  );

  di.registerLazySingleton<ChatRemoteDataSource>(
    () => ChatRemoteDataSourceImpl(),
  );

  di.registerLazySingleton<ChatUsersRemoteDataSource>(
    () => ChatUsersRemoteDataSourceImpl(),
  );

  di.registerLazySingleton<LocalDatabase>(
    () => LocalDatabase(currentUser.userId),
    dispose: (localDatabase) async {
      await localDatabase.closeCurrentDataBase();
    },
  );
}

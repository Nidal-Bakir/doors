import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class ChatLocalDataSource {
  UnmodifiableListView<LocalChatMessage> getChatWithUser(
    String userId,
    int amountToSkip,
  );

  void addNewMessageToChat(LocalChatMessage newMessage);
  
  void updateMessageInChat(LocalChatMessage updatedMessage);
}

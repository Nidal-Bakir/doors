class GlobalConfig {
  /// the limit of parse result for all queries
  static const int amountOfResultPeerRequest = 20;

  /// the count of messages to get in a chat, for pagination.
  static const int amountOfMessagesPerPageFromLocalDatabase = 50;

  /// the quality of the image, ranging from 0-100 where 100 is the original/max quality.
  static const int imageQualityForImagePicker = 100;
}

import 'package:doors/core/errors/server_error.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class BlockRemoteDataSource {
  Future<void> changeUserBlockStatus(String userRemoteId, bool toBlocked);
}

class BlockRemoteDataSourceImpl extends BlockRemoteDataSource {
  @override
  Future<void> changeUserBlockStatus(
    String userRemoteId,
    bool toBlocked,
  ) async {
    final changeUserBlockStatusCloudFunction =
        ParseCloudFunction('changeUserBlockStatus');

    final ParseResponse deleteMediaMessageInChatCloudResponse;
    try {
      deleteMediaMessageInChatCloudResponse =
          await changeUserBlockStatusCloudFunction.execute(
        parameters: {
          'blockedUserId': userRemoteId,
          'toBlocked': toBlocked ? 'yes' : 'no',
        },
      );
    } catch (error) {
      throw NoConnectionException(
        'can not ${toBlocked ? 'block' : 'unblock'} the user \n Error: ' +
            error.toString(),
      );
    }

    if (!deleteMediaMessageInChatCloudResponse.success) {
      throw ParseException.extractParseException(
          deleteMediaMessageInChatCloudResponse.error);
    }
  }
}

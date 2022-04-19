import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/post/model/post_report.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class PostReportRemoteDataSource {
  /// Send report about a post.
  ///
  /// Returns future that resolve with void to indicate that the report operation was successful.
  ///
  /// Throws [ServerException] in case of connection error or parse error.
  Future<void> reportPost(PostReport postReport);
}

class PostReportRemoteDataSourceImpl extends PostReportRemoteDataSource {
  @override
  Future<void> reportPost(PostReport postReport) async {
    final ParseResponse reportResponse;
    try {
      reportResponse = await postReport.save();
    } on Exception {
      throw const NoConnectionException('cannot sent the post report');
    }
    if (!reportResponse.success && reportResponse.error != null) {
      throw ParseException.extractParseException(reportResponse.error!);
    }
  }
}

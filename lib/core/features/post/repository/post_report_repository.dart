import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/post/data/post_report_remote_data_source.dart';
import 'package:doors/core/features/post/model/post_report.dart';

class PostReportRepository {
  final PostReportRemoteDataSource _postReportRemoteDataSource;

  PostReportRepository(this._postReportRemoteDataSource);
  Future<Either<ServerException, void>> reportPost(
      PostReport postReport) async {
    try {
      await _postReportRemoteDataSource.reportPost(postReport);
      return const Right(null);
    } on ServerException catch (error) {
      return Left(error);
    }
  }
}

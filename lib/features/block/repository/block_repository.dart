import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/features/block/data/block_remote_data_source.dart';

class BlockRepository {
  final BlockRemoteDataSource _blockRemoteDataSource;

  const BlockRepository(this._blockRemoteDataSource);

  Future<Either<ServerException, void>> blockUser(String userRemoteId) {
    return _changeUserBlockStatus(userRemoteId, true);
  }

  Future<Either<ServerException, void>> unblockUser(String userRemoteId) {
    return _changeUserBlockStatus(userRemoteId, false);
  }

  Future<Either<ServerException, void>> _changeUserBlockStatus(
      String userRemoteId, bool toBlocked) async {
    try {
      return Right(
        await _blockRemoteDataSource.changeUserBlockStatus(
          userRemoteId,
          toBlocked,
        ),
      );
    } on ServerException catch (error) {
      return Left(error);
    }
  }
}

import 'package:doors/core/features/post/model/post_rate.dart';
import 'package:doors/core/features/post/model/post.dart';

abstract class UserRateRemoteDataSource {
  Future<PostRate?> getUserRateOnPost(Post post);
  Future<void> setUserRateOnPost(PostRate postRate);
 
}

class UserRateRemoteDataSourceImpl extends UserRateRemoteDataSource {
  @override
  Future<PostRate?> getUserRateOnPost(Post post) {
    // TODO: implement getUserRateOnPost
    throw UnimplementedError();
  }

  @override
  Future<void> setUserRateOnPost(PostRate postRate) {
    // TODO: implement setUserRateOnPost
    throw UnimplementedError();
  }

}

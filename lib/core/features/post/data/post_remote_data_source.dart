import 'package:doors/core/features/post/model/post_rate.dart';
import 'package:doors/core/features/post/model/post.dart';

abstract class PostRemoteDataSource {
  PostRate? getUserRateOnPost(Post post);
  void setUserRateOnPost(Post post, double rate);
}

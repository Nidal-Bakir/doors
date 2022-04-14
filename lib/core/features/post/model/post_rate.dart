import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class PostRate extends ParseObject implements ParseCloneable {
  PostRate() : super.clone(keyClassName);
  PostRate.clone(Map map) : this();
  @override
  clone(Map<String, dynamic> map) => PostRate.clone(map)..fromJson(map);

  static const keyClassName = 'postRate';
  static const keyRate = 'rate';
  static const keyPost = 'post';
  static const keyRateAuthor = 'rateAuthor';
  static const keyCreationDate = keyVarCreatedAt;
  static const keyEditedDate = keyVarUpdatedAt;
  static const keyRateId = keyVarObjectId;

  double get rate => get<double>(keyRate) as double;
  set rate(double rate) => set<double>(keyRate, rate);

  Post get post => get<Post>(keyPost) as Post;
  set post(Post post) => set<Post>(keyPost, post);

  User get rateAuthor => get<User>(keyRateAuthor) as User;
  set rateAuthor(User post) => set<User>(keyRateAuthor, post);

  DateTime get rateCreationDate => get<DateTime>(keyCreationDate) as DateTime;

  DateTime get rateUpdatedDate => get<DateTime>(keyEditedDate) as DateTime;
}

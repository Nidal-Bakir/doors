import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:equatable/equatable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class PostRate extends ParseObject
    with EquatableMixin
    implements ParseCloneable {
  PostRate() : super.clone(keyClassName);

  PostRate.clone(Map map) : this();

  @override
  clone(Map<String, dynamic> map) => PostRate.clone(map)..fromJson(map);

  static const keyClassName = 'postsRates';
  static const keyRate = 'rate';
  static const keyPost = 'post';
  static const keyRateAuthor = 'rateAuthor';
  static const keyCreationDate = keyVarCreatedAt;
  static const keyEditedDate = keyVarUpdatedAt;
  static const keyRateId = keyVarObjectId;

  double get rate => double.parse(get<num>(keyRate).toString());

  set rate(double rate) => set<double>(keyRate, rate);

  ServicePost get post => get<ServicePost>(keyPost) as ServicePost;

  set post(ServicePost post) => set<ServicePost>(keyPost, post);

  User get rateAuthor => get<User>(keyRateAuthor) as User;

  set rateAuthor(User post) => set<User>(keyRateAuthor, post);

  DateTime get rateCreationDate => get<DateTime>(keyCreationDate) as DateTime;

  DateTime get rateUpdatedDate => get<DateTime>(keyEditedDate) as DateTime;

  PostRate getShallowCopy() {
    return PostRate()
      ..objectId = objectId
      ..rate = rate
      ..post = post
      ..rateAuthor = rateAuthor
      ..set(keyCreationDate, get<DateTime>(keyCreationDate))
      ..set(keyEditedDate, get<DateTime>(keyEditedDate));
  }

  @override
  List<Object?> get props =>
      [get<String?>(keyVarObjectId), rate, rateAuthor, post];
}

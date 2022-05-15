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
  static const keyServicePost = 'servicePost';
  static const keyRateAuthor = 'rateAuthor';
  static const keyCreationDate = keyVarCreatedAt;
  static const keyEditedDate = keyVarUpdatedAt;
  static const keyRateId = keyVarObjectId;

  double get rate => double.parse(get<num>(keyRate).toString());

  set rate(double rate) => set<double>(keyRate, rate);

  ServicePost get servicePost => get<ServicePost>(keyServicePost) as ServicePost;

  set servicePost(ServicePost servicePost) => set<ServicePost>(keyServicePost, servicePost);

  User get rateAuthor => get<User>(keyRateAuthor) as User;

  set rateAuthor(User author) => set<User>(keyRateAuthor, author);

  DateTime get rateCreationDate => get<DateTime>(keyCreationDate) as DateTime;

  DateTime get rateUpdatedDate => get<DateTime>(keyEditedDate) as DateTime;

  PostRate getShallowCopy() {
    return PostRate()
      ..objectId = objectId
      ..rate = rate
      ..servicePost = servicePost
      ..rateAuthor = rateAuthor
      ..set(keyCreationDate, get<DateTime>(keyCreationDate))
      ..set(keyEditedDate, get<DateTime>(keyEditedDate));
  }

  @override
  List<Object?> get props =>
      [get<String?>(keyVarObjectId), rate, rateAuthor, servicePost];
}

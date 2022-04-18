import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:equatable/equatable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class Post extends ParseObject with EquatableMixin implements ParseCloneable {
  Post() : super.clone(keyClassName);

  Post.clone(Map map) : this();

  @override
  clone(Map<String, dynamic> map) => Post.clone(map)..fromJson(map);

  static const keyClassName = 'posts';
  static const keyPostId = keyVarObjectId;
  static const keyPostTitle = 'title';
  static const keyPostDescription = 'description';
  static const keyPostLocation = 'location';
  static const keyPostHumanReadableLocation = 'humanReadableLocation';
  static const keyPostImage = 'image';
  static const keyPostType = 'type';
  static const keyPostCategory = 'category';
  static const keyPostKeywords = 'keywords';
  static const keyPostMinCost = 'minConst';
  static const keyPostMaxCost = 'maxCost';
  static const keyPostCostCurrency = 'currency';
  static const _keyPostRateCount = 'rateCount';
  static const _keyPostRateTotal = 'rateTotal';
  static const keyPostCreation = keyVarCreatedAt;
  static const keyAuthor = 'author';

  String get postId => get<String>(keyPostId) as String;

  String get postTitle => get<String>(keyPostTitle) as String;

  set postTitle(String postTitle) => set<String>(keyPostTitle, postTitle);

  String get postDescription => get<String>(keyPostDescription) as String;

  set postDescription(String postDescription) =>
      set<String>(keyPostDescription, postDescription);

  ParseGeoPoint get postLocation =>
      get<ParseGeoPoint>(keyPostLocation) as ParseGeoPoint;

  set postLocation(ParseGeoPoint postLocation) =>
      set<ParseGeoPoint>(keyPostLocation, postLocation);

  String? get postHumanReadableLocation =>
      get<String?>(keyPostHumanReadableLocation);

  set postHumanReadableLocation(String? humanReadableLocation) =>
      set<String?>(keyPostHumanReadableLocation, humanReadableLocation);

  ParseFile? get postImage => get<ParseFile?>(keyPostImage);

  set postImage(ParseFile? postImage) =>
      set<ParseFile?>(keyPostImage, postImage);

  PostType get postType =>
      ((get<String>(keyPostType) as String) == PostType.need.name)
          ? PostType.need
          : PostType.offer;

  set postType(PostType postType) => set<PostType>(keyPostType, postType);

  String get postCategory => get<String>(keyPostCategory) ?? '';

  set postCategory(String postCategory) =>
      set<String>(keyPostCategory, postCategory);

  List<String> get postKeywords =>
      List<String>.from(get(keyPostKeywords) ?? []);

  set postKeywords(List<String> postKeywords) =>
      setAddUnique(keyPostKeywords, postKeywords);

  double? get minCost =>
      double.tryParse(get<num>(keyPostMinCost).toString());

  set minCost(double? minCost) => set<double?>(keyPostMinCost, minCost);

  double? get maxCost => double.tryParse(get<num?>(keyPostMaxCost).toString());

  set maxCost(double? maxCost) => set<double?>(keyPostMaxCost, maxCost);

  String? get postCostCurrency => get<String?>(keyPostCostCurrency);

  set postCostCurrency(String? postCostCurrency) =>
      set<String?>(keyPostCostCurrency, postCostCurrency);

  String get postRate {
    final _postRateCount =
        double.parse(get<num>(_keyPostRateCount).toString());
    final _postRateTotal =
        double.parse(get<num>(_keyPostRateTotal).toString());
    if (_postRateTotal == 0.0 || _postRateCount == 0.0) {
      return '0.0';
    }
    return (_postRateTotal / _postRateCount).toStringAsFixed(1);
  }

  // TODO add rate realation between post and rate class 1:N

  User get author => get<User>(keyAuthor) as User;
  set author(User author) => set<User>(keyAuthor, author);

  @override
  List<Object?> get props => [get<String?>(keyVarObjectId), author];
}

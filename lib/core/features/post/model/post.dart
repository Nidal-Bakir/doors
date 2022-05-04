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
  static const keyPostCreationDate = keyVarCreatedAt;
  static const keyPostLastUpdatedDate = keyVarUpdatedAt;
  static const keyAuthor = 'author';

  String get postId => get<String>(keyPostId) as String;

  String get postTitle => get<String>(keyPostTitle) ?? 'Unknown';

  set postTitle(String postTitle) => set<String>(keyPostTitle, postTitle);

  String get postDescription => get<String>(keyPostDescription) ?? 'Unknown';

  set postDescription(String postDescription) =>
      set<String>(keyPostDescription, postDescription);

  ParseGeoPoint get postLocation =>
      get<ParseGeoPoint>(keyPostLocation) ?? ParseGeoPoint();

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

  set postType(PostType postType) => set<String>(
        keyPostType,
        postType.name == PostType.need.name
            ? PostType.need.name
            : PostType.offer.name,
      );

  String get postCategory => get<String>(keyPostCategory) ?? '';

  set postCategory(String postCategory) =>
      set<String>(keyPostCategory, postCategory);

  Set<String> get postKeywords =>
      Set<String>.from(get(keyPostKeywords) ?? <String>[]);

  set postKeywords(Set<String> postKeywords) =>
      set<List<String>>(keyPostKeywords, postKeywords.toList());

  double? get minCost => double.tryParse(get<num>(keyPostMinCost).toString());

  set minCost(double? minCost) => set<double?>(keyPostMinCost, minCost);

  double? get maxCost => double.tryParse(get<num?>(keyPostMaxCost).toString());

  set maxCost(double? maxCost) => set<double?>(keyPostMaxCost, maxCost);

  String? get postCostCurrency => get<String?>(keyPostCostCurrency);

  set postCostCurrency(String? postCostCurrency) =>
      set<String?>(keyPostCostCurrency, postCostCurrency);

  String get postRate {
    final _postRateCount = double.parse(get<num>(_keyPostRateCount).toString());
    final _postRateTotal = double.parse(get<num>(_keyPostRateTotal).toString());
    if (_postRateTotal == 0.0 || _postRateCount == 0.0) {
      return '0.0';
    }
    return (_postRateTotal / _postRateCount).toStringAsFixed(1);
  }

  DateTime get postCreationDate =>
      get<DateTime>(keyPostCreationDate) as DateTime;

  DateTime get postLastUpdateDate =>
      get<DateTime>(keyPostLastUpdatedDate) as DateTime;

  User get author => get<User>(keyAuthor) as User;
  set author(User author) => set<User>(keyAuthor, author);

  Post getShallowCopy() {
    return Post()
      ..objectId = objectId
      ..postTitle = postTitle
      ..postDescription = postDescription
      ..postLocation = postLocation
      ..postHumanReadableLocation = postHumanReadableLocation
      ..postImage = postImage
      ..postType = postType
      ..postCategory = postCategory
      ..postKeywords = postKeywords
      ..minCost = minCost
      ..maxCost = maxCost
      ..postCostCurrency = postCostCurrency
      ..author = author
      ..set(_keyPostRateCount, get<num>(_keyPostRateCount))
      ..set(_keyPostRateTotal, get<num>(_keyPostRateTotal))
      ..set(keyPostCreationDate, get<DateTime>(keyPostCreationDate))
      ..set(keyPostLastUpdatedDate, get<DateTime>(keyPostLastUpdatedDate));
  }

  @override
  List<Object?> get props =>
      [get<String?>(keyVarObjectId), get<User>(keyAuthor)];
}

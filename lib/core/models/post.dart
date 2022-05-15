import 'package:doors/core/features/auth/model/user.dart';
import 'package:equatable/equatable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class Post extends ParseObject
    with EquatableMixin
    implements ParseCloneable {

  final String className;
  Post(this.className) : super.clone(className);
  

  static const keyPostId = keyVarObjectId;
  static const keyPostTitle = 'title';
  static const keyPostDescription = 'description';
  static const keyPostLocation = 'location';
  static const keyPostHumanReadableLocation = 'humanReadableLocation';
  static const keyPostImage = 'image';
  static const keyPostCategory = 'category';
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

  String get postCategory => get<String>(keyPostCategory) ?? '';

  set postCategory(String postCategory) =>
      set<String>(keyPostCategory, postCategory);

  DateTime get postCreationDate =>
      get<DateTime>(keyPostCreationDate) as DateTime;

  DateTime get postLastUpdateDate =>
      get<DateTime>(keyPostLastUpdatedDate) as DateTime;

  User get author => get<User>(keyAuthor) as User;
  set author(User author) => set<User>(keyAuthor, author);

  Post getShallowCopy();

  @override
  List<Object?> get props => [
        get<String?>(keyVarObjectId),
        get<User>(keyAuthor),
        get<String>(keyPostTitle),
        get<String>(keyPostDescription),
        get<ParseGeoPoint>(keyPostLocation)?.latitude,
        get<ParseGeoPoint>(keyPostLocation)?.longitude,
        get<String?>(keyPostHumanReadableLocation),
        get<ParseFile?>(keyPostImage)?.url,
        get<String>(keyPostCategory),
        get<DateTime>(keyPostCreationDate),
        get<DateTime>(keyPostLastUpdatedDate)
      ];
}

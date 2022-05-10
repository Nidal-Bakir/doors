import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:equatable/equatable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class User extends ParseUser with EquatableMixin implements ParseCloneable {
  static const keyName = 'name';
  static const keyUserClassName = keyClassUser;
  static const keyAccountType = 'accountType';
  static const keyAccountStatues = 'accountStatue';
  static const keyPaypalEmail = 'paypalEmail';
  static const keyPhoneNumber = 'phoneNumber';
  static const keyBio = 'bio';
  static const keyProfileImage = 'profileImage';
  static const keyUserLocation = 'userLocation';
  static const keyUserHumanReadableLocation = 'humanReadableLocation';
  static const keyUserSubscription = 'userSubscription';
  static const keyIsSubscribed = 'isSubscribed';
  static const keyFavoritePosts = 'favoritePosts';
  static const keyUserPosts = 'userPosts';
  static const keyUniqueUserName = keyVarUsername;
  static const keyIsPrivatePhoneNumber = 'isPrivatePhoneNumber';
  static const keyIsPrivateEmailAddress = 'isPrivateEmailAddress';

  static const keyEmail = ParseUser.keyEmailAddress;

  User(
    String? username,
    String? password,
    String? emailAddress, {
    ParseClient? client,
    bool? debug,
    String? sessionToken,
  }) : super(
          username,
          password,
          emailAddress,
          client: client,
          debug: debug,
          sessionToken: sessionToken,
        );

  User.clone(Map<String, dynamic> map)
      : this(
          map[keyVarUsername],
          map[keyVarPassword],
          map[keyVarEmail],
          sessionToken: map[keyVarSessionToken],
        );

  @override
  clone(Map<String, dynamic> map) => User.clone(map)..fromJson(map);

  String get name => get<String>(keyName) as String;

  String get userId => get<String>(keyVarObjectId) as String;

  set name(String name) => set<String>(keyName, name);

  AccountType get accountType =>
      (get(keyAccountType) as String) == AccountType.user.name
          ? AccountType.user
          : AccountType.company;

  set accountType(AccountType accountType) =>
      set(keyAccountType, accountType.name);

  AccountStatues get accountStatues =>
      (get<String>(keyAccountStatues) as String) == AccountStatues.active.name
          ? AccountStatues.active
          : AccountStatues.suspended;

  bool? get isEmailVerified => super.emailVerified;

  String? get paypalEmail => get(keyPaypalEmail);

  set paypalEmail(String? paypalEmail) =>
      set<String?>(keyPaypalEmail, paypalEmail);

  String? get phoneNumber => get<String?>(keyPhoneNumber);

  set phoneNumber(String? phoneNumber) =>
      set<String?>(keyPhoneNumber, phoneNumber);

  String? get bio => get<String?>(keyBio);

  set bio(String? bio) => set<String?>(keyBio, bio);

  ParseFile? get profileImage => get<ParseFile?>(keyProfileImage);

  set profileImage(ParseFile? profileImage) =>
      set<ParseFile?>(keyProfileImage, profileImage);

  ParseGeoPoint? get userLocation => get<ParseGeoPoint?>(keyUserLocation);

  set userLocation(ParseGeoPoint? userLocation) =>
      set<ParseGeoPoint?>(keyUserLocation, userLocation);

  String? get userHumanReadableLocation =>
      get<String?>(keyUserHumanReadableLocation);

  set userHumanReadableLocation(String? humanReadableLocation) =>
      set<String?>(keyUserHumanReadableLocation, humanReadableLocation);

  bool get isSubscribed => get<bool>(keyIsSubscribed) as bool;

  bool get isPrivateEmailAddress => get<bool>(keyIsPrivateEmailAddress) as bool;

  set isPrivateEmailAddress(bool isPrivateEmailAddress) =>
      set<bool>(keyIsPrivateEmailAddress, isPrivateEmailAddress);

  bool get isPrivatePhoneNumber => get<bool>(keyIsPrivatePhoneNumber) as bool;

  set isPrivatePhoneNumber(bool isPrivatePhoneNumber) =>
      set<bool>(keyIsPrivatePhoneNumber, isPrivatePhoneNumber);

  bool get isAnonymousAccount =>
      emailAddress == null || username != emailAddress;

  void addToFavoriteList(Post post) => addRelation(User.keyFavoritePosts, [
        ParseObject(Post.keyClassName)
          ..set(
            'objectId',
            post.objectId,
          )
      ]);
  void removeFromFavoriteList(Post favoritePost) =>
      removeRelation(User.keyFavoritePosts, [
        ParseObject(Post.keyClassName)
          ..set(
            'objectId',
            favoritePost.objectId,
          )
      ]);

  static List<String> keysToExcludeFromQueriesRelatedToUser() => const [
        User.keyAccountStatues,
        User.keyUserSubscription,
        User.keyFavoritePosts,
        User.keyPaypalEmail,
        User.keyUserPosts
      ];

  /// Get new user with (ALL) field set to null except objectId and profileImage is the same.
  User getShallowCopyForEditing() {
    // user email,password and username set to null because parse will assume that
    // they changed and flip the email variation state to false and send new email variation
    // to the email address even if the email not changed.
    // If the user need to change his email we need to set the new email address manually
    // with the new username (username is the emailAddress).
    // The profile image is copied so we can know if the user change or delete the image
    return User(null, null, null, sessionToken: sessionToken)
      ..objectId = objectId
      ..profileImage = profileImage;
  }

  @override
  List<Object?> get props => [
        get<String>(keyVarObjectId),
        emailAddress,
        username,
        super.emailVerified,
        get<String>(keyName),
        get(keyPaypalEmail),
        get<String>(keyPhoneNumber),
        get<String>(keyBio),
        get<String>(keyAccountStatues),
        get<bool>(keyIsPrivateEmailAddress),
        get<bool>(keyIsPrivatePhoneNumber),
        get<String>(keyAccountType),
        get<ParseFile>(keyProfileImage)?.url,
        get<ParseGeoPoint>(keyUserLocation)?.latitude,
        get<ParseGeoPoint>(keyUserLocation)?.longitude,
        get<String>(keyUserHumanReadableLocation),
        get<bool>(keyIsSubscribed)
      ];
}

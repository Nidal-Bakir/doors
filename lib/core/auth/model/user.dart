import 'package:doors/core/auth/model/payment.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class User extends ParseUser implements ParseCloneable {
  static const keyName = 'name';
  static const keyAccountType = 'accountType';
  static const keyAccountStatues = 'accountStatue';
  static const keyPaypalEmail = 'paypalEmail';
  static const keyPhoneNumber = 'phoneNumber';
  static const keyBio = 'bio';
  static const keyProfileImage = 'profileImage';
  static const keyUserLocation = 'userLocation';
  static const keyUserSubscription = 'userSubscription';
  static const keyIsSubscribed = 'isSubscribed';
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

  String get name => get(keyName);

  set name(String name) => set<String>(keyName, name);

  AccountType get accountType =>
      (get(keyAccountType) as String) == AccountType.user.name
          ? AccountType.user
          : AccountType.company;

  set accountType(AccountType accountType) =>
      set(keyAccountType, accountType.name);

  AccountStatues get accountStatues =>
      (get(keyAccountStatues) as String) == AccountStatues.active.name
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

  ParseRelation<UserSubscription> get userSubscription =>
      getRelation<UserSubscription>(keyUserSubscription);

  bool? get isSubscribed => get<bool?>(keyIsSubscribed);
}

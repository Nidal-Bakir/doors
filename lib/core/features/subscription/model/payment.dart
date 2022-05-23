import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/models/user.dart';
import 'package:equatable/equatable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class UserSubscription extends ParseObject
    with EquatableMixin
    implements ParseCloneable {
  UserSubscription() : super(keyClassName);
  static const keyClassName = 'UserPayment';
  static const keyPlanPeriod = 'planPeriod';
  static const keyAmount = 'amount';
  static const keyPaymentMethod = 'paymentMethod';
  static const keyStartSubscriptionDate = 'startSubscriptionDate';
  static const keyEndSubscriptionDate = 'endSubscriptionDate';
  static const keyOwner = 'owner';
  static const keyTransactionId = 'transactionID';

  UserSubscription.clone(Map map) : this();

  @override
  clone(Map<String, dynamic> map) => UserSubscription.clone(map)..fromJson(map);

  /// plan period in months
  int get planPeriod => get<int>(keyPlanPeriod) as int;

  String get paymentId => get<String>(keyVarObjectId) as String;

  double get amount => get<double>(keyAmount) as double;

  PaymentMethod get paymentMethod =>
      PaymentMethod.values.firstWhere((paymentMethod) =>
          paymentMethod.name == (get<String>(keyPaymentMethod) as String));

  DateTime get startSubscriptionDate =>
      get<DateTime>(keyStartSubscriptionDate) as DateTime;

  DateTime get endSubscriptionDate =>
      get<DateTime>(keyEndSubscriptionDate) as DateTime;

  /// get the user owner (parseReference)
  User get owner => get<User>(keyOwner) as User;

  String get transactionID => get<String>(keyTransactionId) as String;

  @override
  List<Object?> get props => [paymentId];
}

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class UserSubscription extends ParseObject implements ParseCloneable {
  UserSubscription() : super(keyClassName);
  static const keyClassName = 'UserPayment';
  static const keyPlanPeriod = 'planPeriod';
  static const keyAmount = 'amount';
  static const keyPaymentMethod = 'paymentMethod';
  static const keyStartSubscriptionDate = 'startSubscriptionDate';
  static const keyEndSubscriptionDate = 'endSubscriptionDate';
  static const keyOwner = 'owner';

  UserSubscription.clone(Map map) : this();

  @override
  clone(Map<String, dynamic> map) => UserSubscription.clone(map)..fromJson(map);

  /// plan period in months
  int get planPeriod => get<int>(keyPlanPeriod) as int;

  /// plan period in months
  set planPeriod(int planPeriod) => set<int>(keyPlanPeriod, planPeriod);

  int get amount => get(keyAmount) as int;

  PaymentMethod get paymentMethod =>
      PaymentMethod.values.firstWhere((paymentMethod) =>
          paymentMethod.name == (get(keyPaymentMethod) as String));

  set paymentMethod(PaymentMethod paymentMethod) =>
      set(keyPaymentMethod, paymentMethod.name);

  DateTime get startSubscriptionDate =>
      get<DateTime>(keyStartSubscriptionDate) as DateTime;

  DateTime get endSubscriptionDate =>
      get<DateTime>(keyEndSubscriptionDate) as DateTime;

  /// get the user owner (parseReference)
  User get owner => get(keyOwner) as User;
}

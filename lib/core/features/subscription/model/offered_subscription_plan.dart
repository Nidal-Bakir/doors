import 'package:doors/core/enums/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class OfferedSubscriptionPlan extends ParseObject
    with EquatableMixin
    implements ParseCloneable {
  OfferedSubscriptionPlan() : super(keyClassName);
  static const keyClassName = 'OfferedSubscriptionPlan';
  static const keyPlanPeriod = 'planPeriod';
  static const keyAmount = 'amount';
  static const keyAccountType = 'accountType';
  static const keyIsFreeOfChargeOffer = 'isFreeOfChargeOffer';

  OfferedSubscriptionPlan.clone(Map map) : this();

  @override
  clone(Map<String, dynamic> map) =>
      OfferedSubscriptionPlan.clone(map)..fromJson(map);

  /// plan period in months
  int get planPeriod => get<int>(keyPlanPeriod) as int;

  double get amount => get<num>(keyAmount)!.toDouble() ;

  String get planId => get<String>(keyVarObjectId) as String;

  bool get isFreeOfChargeOffer => get(keyIsFreeOfChargeOffer) as bool;

  AccountType get accountType =>
      (get<String>(keyAccountType) as String) == AccountType.user.name
          ? AccountType.user
          : AccountType.company;

  @override
  List<Object?> get props => [planId];
}

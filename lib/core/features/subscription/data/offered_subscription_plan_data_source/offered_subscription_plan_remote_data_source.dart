import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/subscription/model/offered_subscription_plan.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class OfferedSubscriptionPlanRemoteDataSource {
  /// Get a list of all the offered subscription plans for the users or companies
  ///
  /// Throws [ServerException]
  Future<List<OfferedSubscriptionPlan>> getOfferedSubscriptionPlans(
    AccountType plansForAccountType,
  );
}

class OfferedSubscriptionPlanRemoteDataSourceImpl
    extends OfferedSubscriptionPlanRemoteDataSource {
  @override
  Future<List<OfferedSubscriptionPlan>> getOfferedSubscriptionPlans(
      AccountType plansForAccountType) async {
    QueryBuilder queryBuilder =
        QueryBuilder.name(OfferedSubscriptionPlan.keyClassName);
    queryBuilder.whereEqualTo(
        OfferedSubscriptionPlan.keyAccountType, plansForAccountType.name);
    ParseResponse offeredPlansResponse;
    try {
      offeredPlansResponse = await queryBuilder.query();
    } catch (error) {
      throw NoConnectionException(
          'can not load the OfferedSubscriptionPlans for ${plansForAccountType.name} account');
    }

    if (offeredPlansResponse.success &&
        offeredPlansResponse.error == null &&
        offeredPlansResponse.count != 0) {
      return List<OfferedSubscriptionPlan>.from(offeredPlansResponse.results!);
    }
    throw ParseException.extractParseException(offeredPlansResponse.error!);
  }
}
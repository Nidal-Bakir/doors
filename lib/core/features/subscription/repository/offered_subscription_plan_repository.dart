import 'package:dartz/dartz.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/subscription/data/offered_subscription_plan_data_source/offered_subscription_plan_remote_data_source.dart';
import 'package:doors/core/features/subscription/model/offered_subscription_plan.dart';

class OfferedSubscriptionPlanRepository {
  final OfferedSubscriptionPlanRemoteDataSource
      _offeredSubscriptionPlanRemoteDataSource;

  OfferedSubscriptionPlanRepository(
      this._offeredSubscriptionPlanRemoteDataSource);

  /// Get a list of all the offered subscription plans for the companies
  ///
  /// Returns either [ServerException] or [List<OfferedSubscriptionPlan>]
  Future<Either<ServerException, List<OfferedSubscriptionPlan>>>
      getOfferedSubscriptionPlans(AccountType plansForAccountType) async {
    try {
      return Right(await _offeredSubscriptionPlanRemoteDataSource
          .getOfferedSubscriptionPlans(plansForAccountType));
    } on ServerException catch (serverException) {
      return Left(serverException);
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/features/subscription/data/subscription_remote_data_source/subscription_remote_data_source.dart';
import 'package:doors/core/features/subscription/model/card_info.dart';
import 'package:doors/core/features/subscription/model/offered_subscription_plan.dart';

class SubscriptionRepository {
  final SubscriptionRemoteDataSource _subscriptionRemoteDataSource;

  SubscriptionRepository(this._subscriptionRemoteDataSource);
  Future<Either<ServerException, String>> _generateClientKey() async {
    try {
      return Right(await _subscriptionRemoteDataSource.generateClientKey());
    } on ServerException catch (e) {
      return left(e);
    }
  }

  Future<Either<ServerException, String>> _processTransactionForSubscription({
    required String nonce,
    required String selectedPlanId,
    required String userId,
  }) async {
    try {
      return Right(await _subscriptionRemoteDataSource.processSubscription(
        nonce: nonce,
        selectedPlanId: selectedPlanId,
        userId: userId,
      ));
    } on ServerException catch (e) {
      return left(e);
    }
  }

  /// process free plan subscription
  Future<Either<ServerException, String>> processFreeSubscription({
    required String selectedPlanId,
    required String userId,
  }) async {
    try {
      return Right(await _subscriptionRemoteDataSource.processSubscription(
        // not important, any value can be used this value will not  be processed in the server
        nonce: '',
        selectedPlanId: selectedPlanId,
        userId: userId,
      ));
    } on ServerException catch (e) {
      return left(e);
    }
  }

  /// Start Paypal payment flow
  ///
  /// Returns either [ExceptionBase] ([ServerException] |
  ///  [PayPalFlowWasCanceledByTheUser]) OR nonce
  Future<Either<ExceptionBase, String>> startPaypalPaymentProcess(
      OfferedSubscriptionPlan selectedPlan, String userId) async {
    final tokenizationKey = await _generateClientKey();

    return tokenizationKey.fold(
      (error) {
        return Left(error);
      },
      (key) async {
        final nonce =
            await _subscriptionRemoteDataSource.startPaypalPaymentFlow(
          tokenizationKey: key,
          selectedPlan: selectedPlan,
        );
        if (nonce != null) {
          final processResult = await _processTransactionForSubscription(
            nonce: nonce,
            selectedPlanId: selectedPlan.planId,
            userId: userId,
          );
          return processResult.fold(
            (error) => Left(error),
            (transactionId) => Right(transactionId),
          );
        } else {
          return const Left(
            PayPalFlowWasCanceledByTheUser(
              'PayPal flow was canceled by the user',
            ),
          );
        }
      },
    );
  }

  /// Returns either [ExceptionBase] ([ServerException] |
  ///  [UnexpectedErrorWhileProcessingThePaymentNullNonce]) OR nonce
  Future<Either<ExceptionBase, String>> validateCreditCardAndGetNonce({
    required CreditCardInfo creditCardInfo,
  }) async {
    final tokenizationKey = await _generateClientKey();
    return tokenizationKey.fold(
      (error) {
        return Left(error);
      },
      (key) async {
        final nonce =
            await _subscriptionRemoteDataSource.validateCreditCardAndGetNonce(
          tokenizationKey: key,
          creditCardInfo: creditCardInfo,
        );
        if (nonce != null) {
          return Right(nonce);
        } else {
          return const Left(
            UnexpectedErrorWhileProcessingThePaymentNullNonce(
              'Unexpected error while processing the payment, nonce returns with null',
            ),
          );
        }
      },
    );
  }

  /// Start credit card payment process
  ///
  /// Returns Either [ExceptionBase] or transactionId for success transaction.
  Future<Either<ExceptionBase, String>> startCreditCardPaymentProcess({
    required OfferedSubscriptionPlan selectedPlan,
    required String userId,
    required String nonce,
  }) async {
    final processResult = await _processTransactionForSubscription(
      nonce: nonce,
      selectedPlanId: selectedPlan.planId,
      userId: userId,
    );
    return processResult.fold(
      (error) => Left(error),
      (transactionId) => Right(transactionId),
    );
  }
}

import 'dart:developer';

import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/subscription/model/card_info.dart';
import 'package:doors/core/features/subscription/model/offered_subscription_plan.dart';
import 'package:flutter_braintree/flutter_braintree.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class SubscriptionRemoteDataSource {
  /// call cloud code function to get clientKey
  ///
  /// Returns ClientToken
  ///
  /// Throws [ServerException] ([NoConnectionException] | [ParseCloudCodeCustomException])
  Future<String> generateClientKey();

  /// call cloud code function to start Subscription and payment process
  ///
  /// [nonce]: returns form braintree client ones the user inter his payment info
  ///
  /// [selectedPlanId]: string representing the plan selected by the user
  ///
  /// [userId]: current userId
  ///
  /// Returns transactionId
  ///
  /// Throws [ServerException] ([NoConnectionException]| [ParseCloudCodeCustomException])
  Future<String> processSubscription({
    required String nonce,
    required String selectedPlanId,
    required String userId,
  });

  /// Start Paypal payment flow
  ///
  /// Returns nonce identifier in case of success, other wise will return null
  Future<String?> startPaypalPaymentFlow({
    required String tokenizationKey,
    required OfferedSubscriptionPlan selectedPlan,
  });

  /// Start credit card payment process
  ///
  /// Returns nonce identifier in case of success, other wise will return null
  Future<String?> validateCreditCardAndGetNonce(
      {required String tokenizationKey,
      required CreditCardInfo creditCardInfo});
}

class SubscriptionRemoteDataSourceImpl extends SubscriptionRemoteDataSource {
  @override
  Future<String> generateClientKey() async {
    ParseResponse generateTokenCloudResponse;
    try {
      generateTokenCloudResponse =
          await ParseCloudFunction('generateToken').execute();
    } catch (e) {
      throw NoConnectionException(
          'unable to connect to parse cloud function to call generateToken' +
              e.toString());
    }

    if (generateTokenCloudResponse.success &&
        generateTokenCloudResponse.error == null &&
        generateTokenCloudResponse.result != null) {
      return generateTokenCloudResponse.result;
    } else {
      throw ParseException.extractParseException(
          generateTokenCloudResponse.error!);
    }
  }

  @override
  Future<String> processSubscription({
    required String nonce,
    required String selectedPlanId,
    required String userId,
  }) async {
    ParseResponse checkoutCloudResponse;
    try {
      checkoutCloudResponse = await ParseCloudFunction('checkout').execute(
          parameters: {
            "userId": userId,
            'planId': selectedPlanId,
            "nonce": nonce
          });
    } catch (e) {
      throw NoConnectionException(
          'unable to connect to parse cloud function to call checkout' +
              e.toString());
    }

    if (checkoutCloudResponse.success &&
        checkoutCloudResponse.error == null &&
        checkoutCloudResponse.result != null) {
      return checkoutCloudResponse.result['transactionId'];
    } else {
      throw ParseException.extractParseException(checkoutCloudResponse.error!);
    }
  }

  @override
  Future<String?> validateCreditCardAndGetNonce({
    required String tokenizationKey,
    required CreditCardInfo creditCardInfo,
  }) async {
    final request = BraintreeCreditCardRequest(
      cardNumber: creditCardInfo.cardNumber,
      expirationMonth: creditCardInfo.expirationMonth,
      expirationYear: creditCardInfo.expirationYear,
      cvv: creditCardInfo.cvvCode,
    );
    BraintreePaymentMethodNonce? result = await Braintree.tokenizeCreditCard(
      tokenizationKey,
      request,
    );
    if (result != null) {
      return result.nonce;
    }
    return null;
  }

  @override
  Future<String?> startPaypalPaymentFlow({
    required String tokenizationKey,
    required OfferedSubscriptionPlan selectedPlan,
  }) async {
    final request = BraintreePayPalRequest(
      amount: selectedPlan.amount.toString(),
      currencyCode: 'USD',
      displayName: 'Doors App',
    );
    BraintreePaymentMethodNonce? result = await Braintree.requestPaypalNonce(
      tokenizationKey,
      request,
    );
    if (result != null) {
      return result.nonce;
    }

    log('PayPal flow was canceled.');
    return null;
  }
}

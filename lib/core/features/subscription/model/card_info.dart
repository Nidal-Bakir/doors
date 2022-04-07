import 'package:equatable/equatable.dart';

class CreditCardInfo extends Equatable {
  final String cardNumber;
  final String expirationYear;
  final String expirationMonth;
  final String cardHolderName;
  final String cvvCode;

  const CreditCardInfo({
    required this.cardNumber,
    required this.expirationYear,
    required this.expirationMonth,
    required this.cvvCode,
    this.cardHolderName = '',
  });

  @override
  List<Object?> get props =>
      [cardNumber, cvvCode, expirationYear, expirationMonth, cardHolderName];
}

import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/subscription/model/card_info.dart';
import 'package:doors/core/features/subscription/model/offered_subscription_plan.dart';
import 'package:doors/core/features/subscription/presentation/managers/subscription_bloc/subscription_bloc.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/core/widgets/title_with_under_line_in_the_end.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class AddCreditCardScreen extends StatefulWidget {
  static const routeName = '/add-credit-card';

  final SubscriptionBloc subscriptionBloc;
  final OfferedSubscriptionPlan selectedPlan;
  final String userId;
  const AddCreditCardScreen({
    Key? key,
    required this.subscriptionBloc,
    required this.selectedPlan,
    required this.userId,
  }) : super(key: key);

  @override
  State<AddCreditCardScreen> createState() => _AddCreditCardScreenState();
}

class _AddCreditCardScreenState extends State<AddCreditCardScreen> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SubscriptionBloc>.value(
      value: widget.subscriptionBloc,
      child: Builder(
        builder: (context) => Scaffold(
          backgroundColor: Theme.of(context).colorScheme.primary,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 32.0,
                ),
                child: Card(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      const TitleWithUnderLineInTheEnd(
                        numberOfUnderLinedChars: 4,
                        label: 'Add your card',
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CreditCardWidget(
                        cardNumber: cardNumber,
                        expiryDate: expiryDate,
                        cardHolderName: cardHolderName,
                        cvvCode: cvvCode,
                        showBackView: isCvvFocused,
                        obscureCardNumber: true,
                        obscureCardCvv: true,
                        isHolderNameVisible: true,
                        cardBgColor: Theme.of(context).colorScheme.primary,
                        isSwipeGestureEnabled: true,
                        onCreditCardWidgetChange: (_) {},
                      ),
                      CreditCardForm(
                        formKey: formKey,
                        obscureCvv: true,
                        obscureNumber: true,
                        cardNumber: cardNumber,
                        cvvCode: cvvCode,
                        isHolderNameVisible: false,
                        isCardNumberVisible: true,
                        isExpiryDateVisible: true,
                        cardHolderName: cardHolderName,
                        expiryDate: expiryDate,
                        themeColor: Theme.of(context).colorScheme.primary,
                        textColor: Theme.of(context).colorScheme.secondary,
                        cardNumberDecoration: InputDecoration(
                          fillColor: Theme.of(context).colorScheme.onSurface,
                          filled: true,
                          suffixIconColor:
                              Theme.of(context).colorScheme.secondary,
                          border: const OutlineInputBorder(
                            gapPadding: 0.0,
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          labelStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(letterSpacing: 1),
                          label: Padding(
                            padding: const EdgeInsetsDirectional.only(bottom: 25),
                            child: Text(context.loc.card_number),
                          ),
                          hintText: 'XXXX XXXX XXXX XXXX',
                        ),
                        expiryDateDecoration: InputDecoration(
                          fillColor: Theme.of(context).colorScheme.onSurface,
                          filled: true,
                          suffixIconColor:
                              Theme.of(context).colorScheme.secondary,
                          border: const OutlineInputBorder(
                            gapPadding: 0.0,
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          labelStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(letterSpacing: 1),
                          label: Padding(
                            padding: const EdgeInsetsDirectional.only(bottom: 25),
                            child: Text(context.loc.expired_Date),
                          ),
                          hintText: 'XX/XX',
                        ),
                        cvvCodeDecoration: InputDecoration(
                          fillColor: Theme.of(context).colorScheme.onSurface,
                          filled: true,
                          suffixIconColor:
                              Theme.of(context).colorScheme.secondary,
                          border: const OutlineInputBorder(
                            gapPadding: 0.0,
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          labelStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(letterSpacing: 1),
                          label: const Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 25),
                            child: Text('CVV'),
                          ),
                          hintText: 'XXX',
                        ),
                        onCreditCardModelChange: onCreditCardModelChange,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      BlocConsumer<SubscriptionBloc, SubscriptionState>(
                        listener: (context, state) {
                          state.whenOrNull(
                            creditCardValidationSuccess: () {
                              Navigator.of(context).pop();
                            },
                            processFailure: (error) {
                              showErrorSnackBar(
                                  context, error.getLocalMessageError(context));
                            },
                          );
                        },
                        builder: (context, state) {
                          if (state is SubscriptionStateInProgress) {
                            return const Center(
                              child: LoadingIndicator(),
                            );
                          }
                          return ElevatedButton(
                            child: Container(
                              margin: const EdgeInsets.all(12),
                              child: Text(
                                context.loc.validate,
                              ),
                            ),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                context.read<SubscriptionBloc>().add(
                                      SubscriptionCreditCardAdded(
                                        CreditCardInfo(
                                          cardNumber: cardNumber,
                                          cvvCode: cvvCode,
                                          expirationMonth:
                                              expiryDate.split('/')[0],
                                          expirationYear:
                                              expiryDate.split('/')[1],
                                        ),
                                        widget.selectedPlan,
                                        widget.userId,
                                      ),
                                    );
                              } else {
                                showErrorSnackBar(
                                    context, context.loc.invalid_card_info);
                              }
                            },
                          );
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}

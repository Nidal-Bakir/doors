import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/subscription/model/offered_subscription_plan.dart';
import 'package:doors/core/features/subscription/presentation/managers/subscription_bloc/subscription_bloc.dart';
import 'package:doors/core/features/subscription/presentation/widgets/offered_subscription_plans_widget.dart';
import 'package:doors/core/features/subscription/presentation/widgets/show_bottom_sheet_to_select_payment_method.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:doors/core/widgets/sized_box_16_h.dart';
import 'package:doors/core/widgets/title_with_under_line_in_the_end.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class SubscriptionScreen extends StatefulWidget {
  static const routeName = '/subscription';
  final User currentUser;
  const SubscriptionScreen({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  late final _subscriptionOrPromotionLabel =
      _isCompanyAccount ? context.loc.subscription : context.loc.promotion;

  OfferedSubscriptionPlan? _selectedPlan;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SubscriptionBloc>(
      create: (context) => GetIt.instance.get<SubscriptionBloc>(),
      child: Builder(builder: (context) {
        return BlocListener<SubscriptionBloc, SubscriptionState>(
          listener: (context, state) {
            state.whenOrNull(
              processSuccess: (_) {
                context
                    .read<AuthBloc>()
                    .add(const AuthGetUpdatedUserDataRequested());
                Navigator.of(context).popUntil(
                  (route) => route.isFirst,
                );
                showSuccussSnackBar(
                  context,
                  context.loc.your_subscription_was_successfully_processed,
                );
              },
              processFailure: (error) => showErrorSnackBar(
                context,
                error.getLocalMessageError(context),
              ),
            );
          },
          child: Scaffold(
            backgroundColor: Theme.of(context).colorScheme.primary,
            body: SafeArea(
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 32.0,
                      ),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 40.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: TitleWithUnderLineInTheEnd(
                                  label: _subscriptionOrPromotionLabel,
                                  numberOfUnderLinedChars: 2,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  _isCompanyAccount
                                      ? 'assets/images/tariff-plans-subscription.png'
                                      : 'assets/images/promotion.png',
                                  height: 230,
                                  cacheHeight: 230,
                                ),
                              ),
                              LineWithTextOnRow(
                                text: context.loc.what_is +
                                    ' ' +
                                    _subscriptionOrPromotionLabel,
                              ),
                              const SizedBox(height: 8),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  _isCompanyAccount
                                      ? context.loc
                                          .its_a_way_to_unlock_the_app_features
                                      : context.loc
                                          .its_a_way_to_stand_out_between_other_users,
                                ),
                              ),
                              const SizedBox16H(),
                              LineWithTextOnRow(
                                text: context.loc.features_of +
                                    ' ' +
                                    _subscriptionOrPromotionLabel,
                              ),
                              const SizedBox(height: 8),
                              if (widget.currentUser.accountType ==
                                  AccountType.company)
                                Row(
                                  children: [
                                    const Text('🔸'),
                                    Expanded(
                                      child: Text(
                                        context.loc
                                            .add_jop_offers_and_get_jop_application_from_user_for_your_jop_offer,
                                      ),
                                    ),
                                  ],
                                ),
                              Row(
                                children: [
                                      const Text('🔸'),
                                  Expanded(
                                    child: Text(
                                      context.loc
                                          .your_services_will_appear_at_the_top_of_every_search,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                      const Text('🔸'),
                                  Expanded(
                                    child: Text(
                                      context.loc.no_ads_anymore,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox16H(),
                              OfferedSubscriptionPlansWidget(
                                accountType: widget.currentUser.accountType,
                                onPlanSelected: (offeredSubscriptionPlan) {
                                  _selectedPlan = offeredSubscriptionPlan;
                                },
                              ),
                              const SizedBox16H(),
                              const Spacer(),
                              Align(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                  child: Text(context.loc.checkout),
                                  onPressed: () {
                                    _onCheckoutPressed(context);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  void _onCheckoutPressed(BuildContext context) {
    if (_selectedPlan != null) {
      if (_selectedPlan!.isFreeOfChargeOffer) {
        context.read<SubscriptionBloc>().add(
              SubscriptionFreeSubscriptionRequested(
                _selectedPlan!,
                widget.currentUser.userId,
              ),
            );
      } else {
        showBottomSheetToSelectPaymentMethod(
          context,
          _selectedPlan!,
          widget.currentUser.userId,
          context.read<SubscriptionBloc>(),
        );
      }
    } else {
      showErrorSnackBar(
        context,
        context.loc.please_select_subscription_plan,
      );
    }
  }

  bool get _isCompanyAccount =>
      widget.currentUser.accountType == AccountType.company;
}

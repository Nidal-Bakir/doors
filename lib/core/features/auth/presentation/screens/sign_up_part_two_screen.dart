import 'dart:io';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/widgets/bio_head_line_with_text_field.dart';
import 'package:doors/core/widgets/profile_image.dart';
import 'package:doors/core/features/auth/presentation/widgets/sign_up_headline_text_with_icon.dart';
import 'package:doors/core/features/subscription/model/offered_subscription_plan.dart';
import 'package:doors/core/features/subscription/presentation/managers/subscription_bloc/subscription_bloc.dart';
import 'package:doors/core/features/subscription/presentation/widgets/offered_subscription_plans_widget.dart';
import 'package:doors/core/features/subscription/presentation/widgets/show_bottom_sheet_to_select_payment_method.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/core/widgets/restart_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class SignUpPartTwoScreen extends StatefulWidget {
  static const routeName = '/sign_up_part_two';
  final User user;

  const SignUpPartTwoScreen({Key? key, required this.user}) : super(key: key);

  @override
  State<SignUpPartTwoScreen> createState() => _SignUpPartTwoScreenState();
}

class _SignUpPartTwoScreenState extends State<SignUpPartTwoScreen> {
  OfferedSubscriptionPlan? _selectedPlan;
  String? _bio = '';
  ParseFile? _profileImage;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SubscriptionBloc>(
      create: (context) => GetIt.instance.get<SubscriptionBloc>(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.primary,
            body: BlocListener<SubscriptionBloc, SubscriptionState>(
              listener: (context, state) {
                state.whenOrNull(
                  processSuccess: (_) => RestartApp.restart(context),
                  processFailure: (error) => showErrorSnackBar(
                    context,
                    error.getLocalMessageError(context),
                  ),
                );
              },
              child: SafeArea(
                child: CustomScrollView(
                  slivers: [
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Hero(
                        tag: 'card',
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 32.0,
                          ),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0,
                                horizontal: 40.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: SignUpHeadLineTextWithIcon(
                                      accountType: widget.user.accountType,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  ProfileImage(
                                    onProfileImageSelected:
                                        _onProfileImageSelected,
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  BioHeadLineWithTextField(
                                    onBioSave: _onBioSave,
                                  ),
                                  if (widget.user.accountType ==
                                      AccountType.company)
                                    SizedBox(
                                      width: double.infinity,
                                      child: OfferedSubscriptionPlansWidget(
                                        accountType: AccountType.company,
                                        onPlanSelected: (selectedPlan) {
                                          _selectedPlan = selectedPlan;
                                        },
                                      ),
                                    ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        top: 16.0),
                                    child: BlocConsumer<AuthBloc, AuthState>(
                                      listener: (context, state) {
                                        state.whenOrNull(
                                          authSignUpSuccess: (user) {
                                            _onAuthSignUpSuccessThenCheckout(
                                              user,
                                              context,
                                            );
                                          },
                                          authLoadFailure: (error) =>
                                              showErrorSnackBar(
                                            context,
                                            error.getLocalMessageError(context),
                                          ),
                                        );
                                      },
                                      builder: (context, state) {
                                        if (state is AuthInProgress) {
                                          return const Align(
                                              alignment:
                                                  AlignmentDirectional.center,
                                              child: LoadingIndicator());
                                        } else if (state is AuthSignUpSuccess) {
                                          return Align(
                                            alignment:
                                                AlignmentDirectional.center,
                                            child: ElevatedButton(
                                              child: Text(context.loc.checkout),
                                              onPressed: () {
                                                _onAuthSignUpSuccessThenCheckout(
                                                  state.user,
                                                  context,
                                                );
                                              },
                                            ),
                                          );
                                        }
                                        return Align(
                                          alignment:
                                              AlignmentDirectional.center,
                                          child: ElevatedButton(
                                            child: Text(context.loc.sign_up),
                                            onPressed: () {
                                              _onSignUpPressed(context);
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
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
        },
      ),
    );
  }

  void _onSignUpPressed(BuildContext context) async {
    widget.user.bio = _bio?.trim();
    widget.user.profileImage = _profileImage;
    if (_selectedPlan != null || widget.user.accountType == AccountType.user) {
      context.read<AuthBloc>().add(AuthSignUpRequested(widget.user));
    } else {
      showErrorSnackBar(context, context.loc.please_select_subscription_plan);
    }
  }

  void _onBioSave(String? bio) {
    _bio = bio?.trim();
  }

  void _onProfileImageSelected({
    required String? profileImagePath,
    required String? profileImageName,
  }) {
    if (profileImagePath != null) {
      _profileImage = ParseFile(
        File.fromUri(Uri.file(profileImagePath)),
        name: profileImageName,
        autoSendSessionId: true,
      );
    } else {
      _profileImage = null;
    }
  }

  void _onAuthSignUpSuccessThenCheckout(User user, BuildContext context) {
    if (user.accountType == AccountType.user) {
      RestartApp.restart(context);
    } else {
      if (_selectedPlan != null) {
        if (_selectedPlan!.isFreeOfChargeOffer) {
          context
              .read<SubscriptionBloc>()
              .add(SubscriptionFreeSubscriptionRequested(
                _selectedPlan!,
                user.userId,
              ));
        } else {
          showBottomSheetToSelectPaymentMethod(context, _selectedPlan!,
              user.userId, context.read<SubscriptionBloc>());
        }
      } else {
        showErrorSnackBar(context, context.loc.please_select_subscription_plan);
      }
    }
  }
}

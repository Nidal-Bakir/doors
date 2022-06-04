import 'dart:io';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/features/user_location/models/user_location.dart';
import 'package:doors/core/features/user_location/presentation/widgets/user_location_widget.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/bio_head_line_with_text_field.dart';
import 'package:doors/core/widgets/email_text_field.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/core/widgets/name_text_field.dart';
import 'package:doors/core/widgets/phone_number_text_field.dart';
import 'package:doors/core/widgets/primary_color_background_for_scaffold.dart';
import 'package:doors/core/widgets/sized_box_16_h.dart';
import 'package:doors/features/user_profile/presentation/managers/edit_profile_bloc/edit_profile_bloc.dart';
import 'package:doors/features/user_profile/presentation/widgets/circular_profile_image_with_image_picker.dart';
import 'package:doors/features/user_profile/presentation/widgets/private_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class EditProfileScreen extends StatefulWidget {
  static const routeName = '/edit-profile';
  final User currentUserProfile;
  const EditProfileScreen({
    Key? key,
    required this.currentUserProfile,
  }) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late final _editedUser = widget.currentUserProfile.getShallowCopyForEditing();
  late final _currentUserProfile = widget.currentUserProfile;
  late ParseFile? _oldProfileImage;

  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    _oldProfileImage = widget.currentUserProfile.profileImage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EditProfileBloc>(
      create: (context) => GetIt.I.get<EditProfileBloc>(),
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text(context.loc.edit_profile,
                style: Theme.of(context).textTheme.headline6),
          ),
          body: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: PrimaryColorBackgroundForScaffold(
                colorHeight: 90,
                scaffoldWidget: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: CircularProfileImageWithImagePicker(
                            initProfileImage: _currentUserProfile.profileImage,
                            onProfileImageSelected: _onProfileImageSelected,
                          ),
                        ),
                        const SizedBox16H(),
                        LineWithTextOnRow(text: context.loc.name),
                        NameTextField(
                          initName: _currentUserProfile.name,
                          hint: widget.currentUserProfile.accountType ==
                                  AccountType.user
                              ? context.loc.name
                              : context.loc.company_name,
                          onSave: (name) {
                            _editedUser.name = name;
                          },
                        ),
                        const SizedBox16H(),
                        LineWithTextOnRow(text: context.loc.email),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: EmailTextField(
                                initEmail: _currentUserProfile.emailAddress,
                                onSave: (emailAddress) {
                                  if (_isEmailChanged(emailAddress)) {
                                    _editedUser.emailAddress = emailAddress;
                                    _editedUser.set(
                                        User.keyUniqueUserName, emailAddress);
                                  }
                                },
                              ),
                            ),
                            PrivateSwitch(
                              initPrivateStatus:
                                  _currentUserProfile.isPrivateEmailAddress,
                              onPrivateStatuesChanged: (emailPrivateStatus) {
                                if (_isEmailPrivacyChanged(
                                    emailPrivateStatus)) {
                                  _editedUser.isPrivateEmailAddress =
                                      emailPrivateStatus;
                                }
                              },
                            ),
                          ],
                        ),
                        const SizedBox16H(),
                        LineWithTextOnRow(
                          text: context.loc.optional_phone_number,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: PhoneNumberTextField(
                                initPhoneNumber:
                                    _currentUserProfile.phoneNumber,
                                onSave: (phoneNumber) {
                                  if (_isPhoneNumberChanged(phoneNumber)) {
                                    _editedUser.phoneNumber =
                                        phoneNumber.toString();
                                  }
                                },
                              ),
                            ),
                            PrivateSwitch(
                              initPrivateStatus:
                                  _currentUserProfile.isPrivatePhoneNumber,
                              onPrivateStatuesChanged:
                                  (phoneNumberPrivateStatus) {
                                if (_isPhoneNumberPrivacyChanged(
                                    phoneNumberPrivateStatus)) {
                                  _editedUser.isPrivatePhoneNumber =
                                      phoneNumberPrivateStatus;
                                }
                              },
                            )
                          ],
                        ),
                        const SizedBox16H(),
                        LineWithTextOnRow(text: context.loc.location),
                        UserLocationWidget(
                          allowEmptyLocation: true,
                          initHumanReadableLocation:
                              _currentUserProfile.userHumanReadableLocation,
                          initUserLocation: _currentUserProfile.userLocation,
                          onUserLocationDetermined: (userLocation) {
                            if (_isUserLocationChanged(userLocation)) {
                              _editedUser.userLocation =
                                  userLocation.userGeoLocation;

                              _editedUser.userHumanReadableLocation =
                                  userLocation.userCity
                                      ?.getHumanReadableCityName();
                            }
                          },
                        ),
                        const SizedBox16H(),
                        BioHeadLineWithTextField(
                          initBio: _currentUserProfile.bio,
                          onBioSave: (bio) {
                            if (_isBioChanged(bio)) {
                              _editedUser.bio = bio;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child:
                              BlocConsumer<EditProfileBloc, EditProfileState>(
                            listener: (context, state) {
                              state.whenOrNull(
                                editFailure: (error) {
                                  showErrorSnackBar(context,
                                      error.getLocalMessageError(context));
                                },
                                editSuccuss: () async {
                                  await _alertTheUserToVarietyHisEmailIfChanged(
                                    context,
                                  );
                                  showSuccussSnackBar(
                                    context,
                                    context.loc
                                        .your_profile_has_been_updated_successfully,
                                  );
                                  Navigator.of(context).pop(true);
                                },
                              );
                            },
                            builder: (context, state) {
                              if (state is EditProfileInProgress) {
                                return const LoadingIndicator();
                              }
                              return ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState?.validate() ??
                                      false) {
                                    _formKey.currentState?.save();
                                    context.read<EditProfileBloc>().add(
                                          EditProfileEdited(
                                            _editedUser,
                                            _oldProfileImage,
                                          ),
                                        );
                                  }
                                },
                                child: Text(
                                  context.loc.save,
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _alertTheUserToVarietyHisEmailIfChanged(
      BuildContext context) async {
    if (_editedUser.emailAddress != null &&
        _isEmailChanged(_editedUser.emailAddress!)) {
      return openSimpleAlertDialog(
        context: context,
        title: context.loc.you_changed_your_email_address,
        content: context.loc.we_sent_you_an_email_to_verify_this_email,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(context.loc.i_will),
          )
        ],
      );
    }
  }

  bool _isPhoneNumberPrivacyChanged(bool phoneNumberPrivateStatus) =>
      phoneNumberPrivateStatus !=
      widget.currentUserProfile.isPrivatePhoneNumber;

  bool _isPhoneNumberChanged(PhoneNumber phoneNumber) =>
      phoneNumber.toString() != widget.currentUserProfile.phoneNumber;

  bool _isEmailPrivacyChanged(bool emailPrivateStatus) =>
      emailPrivateStatus != widget.currentUserProfile.isPrivateEmailAddress;

  bool _isUserLocationChanged(UserLocation userLocation) {
    return userLocation.userGeoLocation !=
        widget.currentUserProfile.userLocation;
  }

  bool _isBioChanged(String? bio) => widget.currentUserProfile.bio != bio;

  bool _isEmailChanged(String emailAddress) {
    return emailAddress != widget.currentUserProfile.emailAddress;
  }

  void _onProfileImageSelected(
    String? profileImagePath,
    String? profileImageName,
  ) {
    if (profileImagePath != null) {
      final _profileImage = ParseFile(
        File.fromUri(Uri.file(profileImagePath)),
        name: profileImageName,
        autoSendSessionId: true,
      );
      _editedUser.profileImage = _profileImage;
    } else {
      _editedUser.profileImage = null;
    }
  }
}

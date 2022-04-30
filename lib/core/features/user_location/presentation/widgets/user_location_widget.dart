import 'dart:async';

import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/user_location/models/city.dart';
import 'package:doors/core/features/user_location/models/user_location.dart';
import 'package:doors/core/features/user_location/presentation/managers/user_location_bloc/user_location_bloc.dart';
import 'package:doors/core/features/user_location/presentation/widgets/current_user_location_using_gps_icon.dart';
import 'package:doors/core/features/user_location/repository/user_location_repository.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class UserLocationWidget extends StatefulWidget {
  final String? initHumanReadableLocation;
  final ParseGeoPoint? initUserLocation;
  final void Function(UserLocation userLocation) onUserLocationDetermined;

  const UserLocationWidget({
    Key? key,
    required this.initHumanReadableLocation,
    required this.initUserLocation,
    required this.onUserLocationDetermined,
  }) : super(key: key);

  @override
  State<UserLocationWidget> createState() => UserLocationWidgetState();
}

class UserLocationWidgetState extends State<UserLocationWidget> {
  late ParseGeoPoint? _userGeoLocation = widget.initUserLocation;
  late var _selectedCity = City()
    ..set(
      City.keyCityName,
      widget.initHumanReadableLocation?.split(',')[1].trim(),
    )
    ..set(City.keyCityCountryName,
        widget.initHumanReadableLocation?.split(',')[0].trim());

  late final _typeAheadTextEditingController =
      TextEditingController(text: widget.initHumanReadableLocation);

  @override
  void dispose() {
    _typeAheadTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserLocationBloc>(
      create: (context) => GetIt.I.get<UserLocationBloc>(),
      child: Builder(
        builder: (context) => BlocConsumer<UserLocationBloc, UserLocationState>(
          listener: (context, state) {
            if (state is UserLocationOperationFailure) {
              if (state.error is LocationException) {
                _showAppropriateErrorDialog(state, context);
              } else {
                showErrorSnackBar(
                    context, state.error.getLocalMessageError(context));
              }
            }
            if (state is GpsBasedLoadSuccuss) {
              widget.onUserLocationDetermined(state.userLocation);
              _typeAheadTextEditingController.text =
                  state.userLocation.userCity?.getHumanReadableCityName() ?? '';
            }
          },
          builder: (context, state) {
            if (state is GpsBasedLoadSuccuss) {
              final _userLocation = state.userLocation;
              _userGeoLocation = state.userLocation.userGeoLocation;
              if (_userLocation.userCity != null) {
                _selectedCity = _userLocation.userCity!;
              } else {
                _typeAheadTextEditingController.text = '';
              }
            }
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: TypeAheadFormField<City>(
                    onSaved: (citeName) {
                      widget.onUserLocationDetermined(UserLocation(
                        _userGeoLocation,
                        _selectedCity,
                      ));
                    },
                    minCharsForSuggestions: 3,
                    hideOnEmpty: true,
                    hideSuggestionsOnKeyboardHide: false,
                    keepSuggestionsOnLoading: true,
                    suggestionsBoxDecoration: SuggestionsBoxDecoration(
                      constraints: const BoxConstraints(minWidth: 295),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    debounceDuration: const Duration(milliseconds: 500),
                    noItemsFoundBuilder: (context) => const SizedBox.shrink(),
                    validator: _cityNameValidator,
                    textFieldConfiguration: TextFieldConfiguration(
                      keyboardType: TextInputType.text,
                      controller: _typeAheadTextEditingController,
                      decoration: InputDecoration(
                        hintText: context.loc.enter_your_city_name,
                      ),
                    ),
                    onSuggestionSelected: (selectedCity) {
                      _selectedCity = selectedCity;
                      _userGeoLocation = selectedCity.cityLocation;

                      _typeAheadTextEditingController.text =
                          selectedCity.getHumanReadableCityName();

                      widget.onUserLocationDetermined(
                        UserLocation(
                          _userGeoLocation,
                          selectedCity,
                        ),
                      );
                    },
                    itemBuilder: (context, city) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                Text(city.countryName + ', ' + city.cityName),
                          ),
                          const Divider(),
                        ],
                      );
                    },
                    errorBuilder: (context, serverException) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          (serverException as ServerException)
                              .getLocalMessageError(context),
                          style:
                              Theme.of(context).textTheme.bodyText2?.copyWith(
                                    letterSpacing: 0.5,
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                        ),
                      );
                    },
                    suggestionsCallback: (enteredCityName) async {
                      final _citiesResult = await GetIt.I
                          .get<UserLocationRepository>()
                          .getListOfCitiesMatchesString(enteredCityName);
                      return _citiesResult.fold(
                        (error) {
                          throw error;
                        },
                        (cities) => cities,
                      );
                    },
                  ),
                ),
                CurrentUserLocationUsingGPSIcon(
                  userLocationState: state,
                )
              ],
            );
          },
        ),
      ),
    );
  }

  void _showAppropriateErrorDialog(
      UserLocationOperationFailure state, BuildContext parentBuildContext) {
    if (state.error is DisabledLocationServicesException) {
      openSimpleAlertDialog(
        context: context,
        title: context.loc.disabled_location_service,
        content: context.loc.please_enable_location_service,
        actions: [
          TextButton(
            style: Theme.of(context).textButtonTheme.style?.copyWith(
                  foregroundColor: MaterialStateProperty.all(
                    Colors.grey,
                  ),
                ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(context.loc.cancel),
          ),
          TextButton(
            onPressed: () {
              Geolocator.openLocationSettings();
              Navigator.of(context).pop();
            },
            child: Text(
              context.loc.open_location_settings,
            ),
          )
        ],
      );
    } else if (state.error is DeniedLocationPermissionsException) {
      openSimpleAlertDialog(
        context: context,
        title: context.loc.we_do_not_have_location_permissions,
        content: context.loc
            .in_order_to_get_your_current_location_you_need_to_give_the_app_location_permissions,
        actions: [
          TextButton(
            style: Theme.of(context).textButtonTheme.style?.copyWith(
                  foregroundColor: MaterialStateProperty.all(
                    Colors.grey,
                  ),
                ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(context.loc.cancel),
          ),
          TextButton(
            onPressed: () {
              parentBuildContext.read<UserLocationBloc>().add(
                  const UserLocationDetermineUserLocationUsingGPSRequested());
              Navigator.of(context).pop();
            },
            child: Text(
              context.loc.retry,
            ),
          )
        ],
      );
    } else if (state.error is PermanentlyDeniedLocationPermissionsException) {
      openSimpleAlertDialog(
        context: context,
        title: context.loc.we_permanently_can_not_have_location_permissions,
        content: context
            .loc.please_go_to_setting_and_give_the_app_location_permissions,
        actions: [
          TextButton(
            style: Theme.of(context).textButtonTheme.style?.copyWith(
                  foregroundColor: MaterialStateProperty.all(
                    Colors.grey,
                  ),
                ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(context.loc.cancel),
          ),
          TextButton(
            onPressed: () {
              Geolocator.openAppSettings();
              Navigator.of(context).pop();
            },
            child: Text(
              context.loc.open_app_settings,
            ),
          )
        ],
      );
    }
  }

  String? _cityNameValidator(String? cityName) {
    if (_userGeoLocation == null ||
        cityName == null ||
        cityName.isEmpty ||
        _typeAheadTextEditingController.text !=
            _selectedCity.getHumanReadableCityName()) {
      return context.loc.please_enter_a_valid_location;
    }
    return null;
  }
}
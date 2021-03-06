import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/user_location/presentation/widgets/user_location_widget.dart';
import 'package:doors/core/utils/country_currency.dart';
import 'package:doors/core/widgets/currency_dropdown.dart';
import 'package:doors/core/widgets/job_types_chips_multi_selection_with_head_line.dart';
import 'package:doors/core/widgets/keywords_head_line_text_field.dart';
import 'package:doors/features/search/models/search_filter.dart';
import 'package:doors/features/search/presentation/widgets/max_distance_slider.dart';
import 'package:doors/features/search/presentation/widgets/service_type_filter_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchFilterOverlay extends StatefulWidget {
  final void Function(SearchFilter searchFilter) onNewFilterApplied;
  final PostsViewFilter postsView;
  final void Function() onReset;
  const SearchFilterOverlay({
    Key? key,
    required this.onNewFilterApplied,
    required this.onReset,
    required this.postsView,
  }) : super(key: key);

  @override
  State<SearchFilterOverlay> createState() => _SearchFilterOverlayState();
}

class _SearchFilterOverlayState extends State<SearchFilterOverlay> {
  final _formKey = GlobalKey<FormState>();
  var _currentFilter = SearchFilter();
  User? _currentUser;

  @override
  void initState() {
    _currentUser = context.read<AuthBloc>().getCurrentUser();
    _currentFilter = _currentFilter.copyWith(
      userGeoLocation: _currentUser?.userLocation,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        color: _theme.colorScheme.primary,
      ),
      padding: const EdgeInsetsDirectional.only(
        start: 50,
        end: 45,
        top: 16,
        bottom: 16,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            UserLocationWidget(
              onTextFieldUserLocationChanged: (enteredTextLocation) {
                if (enteredTextLocation.isEmpty) {
                  setState(() {
                    _currentFilter =
                        _currentFilter.copyWith(userGeoLocation: null);
                  });
                }
              },
              suggestionsLoadingIndicatorColor: _theme.colorScheme.secondary,
              cursorColor: _theme.colorScheme.secondary,
              suggestionsBoxColor: _theme.colorScheme.onPrimary,
              gpsButtonBackgroundColor: _theme.colorScheme.onPrimary,
              inputDecoration: InputDecoration(
                fillColor: _theme.colorScheme.onPrimary,
                hintText: context.loc.enter_city_name,
              ),
              initHumanReadableLocation:
                  _currentUser?.userHumanReadableLocation,
              initUserLocation: _currentUser?.userLocation,
              onUserLocationDetermined: (userLocation) {
                setState(() {
                  _currentFilter = _currentFilter.copyWith(
                    userGeoLocation: userLocation.userGeoLocation,
                  );
                });
              },
            ),
            const SizedBox(
              height: 8,
            ),
            Tooltip(
              triggerMode: TooltipTriggerMode.tap,
              waitDuration: Duration.zero,
              message: context.loc.set_a_location_first,
              child: Opacity(
                opacity: _currentFilter.userGeoLocation == null ? 0.5 : 1.0,
                child: IgnorePointer(
                  ignoring: _currentFilter.userGeoLocation == null,
                  child: MaxDistanceSlider(
                    onMaxDistanceChanged: (maxDistance) {
                      _currentFilter = _currentFilter.copyWith(
                        maxDistanceInKiloMetres:
                            maxDistance == 0.0 ? null : maxDistance.toInt(),
                      );
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: TextFormField(
                    cursorColor: _theme.colorScheme.secondary,
                    textInputAction: TextInputAction.next,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    enableSuggestions: true,
                    decoration: InputDecoration(
                      hintText: context.loc.category,
                      fillColor: _theme.colorScheme.onPrimary,
                    ),
                    keyboardType: TextInputType.name,
                    validator: (category) =>
                        _isValidCategory(category, context),
                    onSaved: (category) {
                      _currentFilter = _currentFilter.copyWith(
                          category:
                              (category?.isEmpty ?? true) ? null : category);
                    },
                  ),
                ),
                if (widget.postsView == PostsViewFilter.services)
                  const SizedBox(
                    width: 8,
                  ),
                if (widget.postsView == PostsViewFilter.services)
                  Flexible(
                    child: ServiceTypeDropdownButtonFormField(
                      onSave: (serviceType) {
                        _currentFilter =
                            _currentFilter.copyWith(serviceType: serviceType);
                      },
                    ),
                  ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            if (widget.postsView == PostsViewFilter.jobs)
              JobTypesChipsMultiSelectionWithHeadLine(
                headLineLabel: context.loc.job_type_filter,
                selectedChipColor: _theme.colorScheme.onPrimary,
                initJobTypes: null,
                onJobTypeChange: (filteredJobTypes) {
                  if (filteredJobTypes.length == JobType.values.length) {
                    // if the user select all the types no need to filter on theme
                    _currentFilter = _currentFilter.copyWith(jobTypes: null);
                  } else {
                    _currentFilter =
                        _currentFilter.copyWith(jobTypes: filteredJobTypes);
                  }
                },
              ),
            if (widget.postsView == PostsViewFilter.services)
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: TextFormField(
                      cursorColor: _theme.colorScheme.secondary,
                      textInputAction: TextInputAction.next,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      enableSuggestions: true,
                      decoration: InputDecoration(
                        hintText: context.loc.up_to,
                        fillColor: _theme.colorScheme.onPrimary,
                      ),
                      keyboardType: TextInputType.number,
                      validator: (upToCost) =>
                          _isValidUpCost(upToCost, context),
                      onSaved: (upToCost) {
                        _currentFilter = _currentFilter.copyWith(
                            maxCost: double.tryParse(upToCost ?? ''));
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    child: CurrencyDropdown(
                      fillColor: _theme.colorScheme.onPrimary,
                      initCurrency: null,
                      onSaved: (currency) {
                        _currentFilter = _currentFilter.copyWith(
                            currency: CountryCurrency.toStringFormat(currency));
                      },
                    ),
                  )
                ],
              ),
            if (widget.postsView == PostsViewFilter.services)
              const SizedBox(
                height: 8,
              ),
            if (widget.postsView == PostsViewFilter.services)
              SizedBox(
                width: 270,
                child: KeywordsHeadLineWithTextField(
                  cursorColor: _theme.colorScheme.secondary,
                  fillColor: _theme.colorScheme.onPrimary,
                  hideHeadLine: true,
                  maxLines: 1,
                  initKeywords: const {},
                  onKeywordsSave: (Set<String> keywords) {
                    _currentFilter = _currentFilter.copyWith(
                        keywords: keywords.isEmpty ? null : keywords);
                  },
                ),
              ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    _currentFilter = SearchFilter();
                    widget.onReset();
                  },
                  child: Text(
                    context.loc.reset,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                TextButton(
                  style: ButtonStyle(
                    textStyle:
                        MaterialStateProperty.all(_theme.textTheme.subtitle2),
                  ),
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      _formKey.currentState?.save();
                      widget.onNewFilterApplied(_currentFilter);
                    }
                  },
                  child: Text(
                    context.loc.apply.toUpperCase(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  String? _isValidUpCost(String? upToCost, BuildContext context) {
    if (upToCost != null || (upToCost?.isEmpty ?? true)) {
      return null;
    }
    if (double.tryParse(upToCost!) == null) {
      return context.loc.not_valid_cost;
    }
    return null;
  }

  String? _isValidCategory(String? category, BuildContext context) {
    if (category == null || category.isEmpty) {
      return null;
    } else if (category.length < 2) {
      return context.loc.short_category;
    }
    return null;
  }
}

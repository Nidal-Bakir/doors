import 'dart:io';

import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:doors/core/features/user_location/models/user_location.dart';
import 'package:doors/core/features/user_location/presentation/widgets/user_location_widget.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/core/widgets/sized_box_16_h.dart';
import 'package:doors/core/widgets/title_with_under_line_in_the_end.dart';
import 'package:doors/features/manage_post/presentation/managers/manage_post_bloc/manage_post_bloc.dart';
import 'package:doors/features/manage_post/presentation/widgets/cost_head_line_with_text_fields.dart';
import 'package:doors/features/manage_post/presentation/widgets/post_image_head_line_with_image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class CreateOrEditPostScreenPartTwo extends StatefulWidget {
  final Post post;
  static const routeName = '/create-or-edit-post-two';

  const CreateOrEditPostScreenPartTwo({Key? key, required this.post})
      : super(key: key);

  @override
  State<CreateOrEditPostScreenPartTwo> createState() =>
      _CreateOrEditPostScreenPartTwoState();
}

class _CreateOrEditPostScreenPartTwoState
    extends State<CreateOrEditPostScreenPartTwo> {
  final _keyFrom = GlobalKey<FormState>();

  // in case of edit service if the user delete or replace the old image we need to keep
  // a reference of the old image to delete it from parseServer
  ParseFile? _oldPostImage;

  late var _postImage = widget.post.postImage;
  late double? _fromCost = widget.post.minCost;
  late double? _upToCost = widget.post.maxCost;
  late String? _currency = widget.post.postCostCurrency;
  late String? _humanReadableLocation =
      widget.post.get(Post.keyPostHumanReadableLocation);
  late ParseGeoPoint? _userGeoLocation = widget.post.get(Post.keyPostLocation);

  @override
  void initState() {
    _oldPostImage = widget.post.postImage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: SafeArea(
          child: SingleChildScrollView(
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
                    child: Form(
                      key: _keyFrom,
                      child: Column(
                        children: [
                          TitleWithUnderLineInTheEnd(
                            label: widget.post.objectId == null
                                ? context.loc.create_new_service
                                : context.loc.edit_service,
                            numberOfUnderLinedChars: 2,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          LineWithTextOnRow(text: context.loc.location),
                          UserLocationWidget(
                            inputDecoration: InputDecoration(
                              hintText: context.loc.enter_your_city_name,
                            ),
                            initHumanReadableLocation: _humanReadableLocation,
                            initUserLocation: _userGeoLocation,
                            onUserLocationDetermined: _onUserLocationDetermined,
                          ),
                          const SizedBox16H(),
                          PostImageHeadLineWithImagePicker(
                            initImage: widget.post.postImage,
                            onPostImageSelected: _onPostImageSelected,
                          ),
                          const SizedBox16H(),
                          CostHeadLineWithTextFields(
                            initCurrency: _currency,
                            initFromCost: _fromCost,
                            initUpToCost: _upToCost,
                            onCostSave: onCostSave,
                          ),
                         
                          BlocConsumer<ManagePostBloc, ManagePostState>(
                            listener: (context, state) {
                              state.whenOrNull(
                                createSuccuss: () {
                                  showSuccussSnackBar(
                                    context,
                                    context.loc.your_service_created_successfully,
                                  );
                                  Navigator.of(context)
                                      .popUntil((route) => route.isFirst);
                                },
                                editSuccuss: () {
                                  showSuccussSnackBar(
                                    context,
                                    context.loc.your_service_edited_successfully,
                                  );
                                  Navigator.of(context)
                                      .popUntil((route) => route.isFirst);
                                },
                                operationFailure: (error) => showErrorSnackBar(
                                  context,
                                  error.getLocalMessageError(context),
                                ),
                              );
                            },
                            builder: (context, state) {
                              if (state is ManagePostInProgress) {
                                return const Padding(
                                  padding: EdgeInsets.only(top: 16),
                                  child: LoadingIndicator(),
                                );
                              }
                              return Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: ElevatedButton(
                                  child: Text(
                                    widget.post.objectId == null
                                        ? context.loc.post
                                        : context.loc.save,
                                  ),
                                  onPressed: () => _onPressed(context),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  void _onPressed(BuildContext context) {
    if (_keyFrom.currentState?.validate() ?? false) {
      _keyFrom.currentState?.save();

      widget.post
        ..postLocation = _userGeoLocation!
        ..postHumanReadableLocation = _humanReadableLocation
        ..postImage = _postImage
        ..maxCost = _upToCost
        ..minCost = _fromCost
        ..postCostCurrency = _currency;

      if (widget.post.objectId == null) {
        context.read<ManagePostBloc>().add(ManagePostCreated(widget.post));
      } else {
        context
            .read<ManagePostBloc>()
            .add(ManagePostEdited(widget.post, _oldPostImage));
      }
    }
  }

  void _onUserLocationDetermined(UserLocation userLocation) {
    _humanReadableLocation = userLocation.userCity?.getHumanReadableCityName();
    _userGeoLocation = userLocation.userGeoLocation;
  }

  void onCostSave({String? currency, double? fromCost, double? upToCost}) {
    _currency = currency;
    _fromCost = fromCost;
    _upToCost = upToCost;
  }

  void _onPostImageSelected(
    String? postImagePath,
    String? postImageName,
  ) {
    if (postImagePath != null) {
      _postImage = ParseFile(
        File.fromUri(Uri.file(postImagePath)),
        name: postImageName,
        autoSendSessionId: true,
      );
    } else {
      _postImage = null;
    }
  }
}

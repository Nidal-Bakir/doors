import 'dart:io';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/user_location/models/user_location.dart';
import 'package:doors/core/features/user_location/presentation/widgets/user_location_widget.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/core/widgets/sized_box_16_h.dart';
import 'package:doors/core/widgets/title_with_under_line_in_the_end.dart';
import 'package:doors/features/manage_post/presentation/managers/manage_post_bloc/manage_post_bloc.dart';
import 'package:doors/features/manage_post/presentation/widgets/category_head_line_with_text_field.dart';
import 'package:doors/features/manage_post/presentation/widgets/description_head_line_with_text_field.dart';
import 'package:doors/features/manage_post/presentation/widgets/job_types_chips_multi_selection_with_head_line.dart';
import 'package:doors/features/manage_post/presentation/widgets/post_image_head_line_with_image_picker.dart';
import 'package:doors/features/manage_post/presentation/widgets/title_head_line_with_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class CreateOrEditJobPost extends StatefulWidget {
  final JobPost? jobPost;
  static const routeName = '/create-or-edit-job-post';
  const CreateOrEditJobPost({Key? key, required this.jobPost})
      : super(key: key);

  @override
  State<CreateOrEditJobPost> createState() => _CreateOrEditJobPostState();
}

class _CreateOrEditJobPostState extends State<CreateOrEditJobPost> {
  final _keyFrom = GlobalKey<FormState>();

  // in case of edit job if the user delete or replace the old image we need to keep
  // a reference of the old image to delete it from parseServer
  ParseFile? _oldPostImage;

  late var _postImage = widget.jobPost?.postImage;

  late var _title = widget.jobPost?.postTitle ?? '';

  late var _category = widget.jobPost?.postCategory ?? '';

  late var _description = widget.jobPost?.postDescription ?? '';

  late Set<JobType>? _jobTypes = widget.jobPost?.jobTypes;

  late String? _humanReadableLocation =
      widget.jobPost?.postHumanReadableLocation;

  late ParseGeoPoint? _jobGeoLocation = widget.jobPost?.postLocation;

  late final _jobPost = widget.jobPost?.getShallowCopy() ?? JobPost();

  @override
  void initState() {
    _oldPostImage = widget.jobPost?.postImage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: SafeArea(
          child: SingleChildScrollView(
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
                          label: _jobPost.objectId == null
                              ? context.loc.create_job_offer
                              : context.loc.edit_job_offer,
                          numberOfUnderLinedChars: 2,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TitleHeadLineWithTextField(
                          onSave: (title) {
                            _title = title;
                          },
                          initTitle: _title,
                        ),
                        const SizedBox16H(),
                        CategoryHeadLineWithTextField(
                          onSave: (category) {
                            _category = category;
                          },
                          initCategory: _category,
                        ),
                        const SizedBox16H(),
                        JobTypesChipsMultiSelectionWithHeadLine(
                          initJobTypes: _jobTypes,
                          onJobTypeChange: (jobTypes) {
                            _jobTypes = jobTypes;
                          },
                        ),
                        const SizedBox16H(),
                        LineWithTextOnRow(text: context.loc.location),
                        UserLocationWidget(
                          inputDecoration: InputDecoration(
                            hintText: context.loc.enter_your_city_name,
                          ),
                          initHumanReadableLocation: _humanReadableLocation,
                          initUserLocation: _jobGeoLocation,
                          onUserLocationDetermined: _onUserLocationDetermined,
                        ),
                        const SizedBox16H(),
                        DescriptionHeadLineWithTextField(
                          initDescription: _description,
                          onDescriptionSave: (description) {
                            _description = description;
                          },
                        ),
                        const SizedBox16H(),
                        PostImageHeadLineWithImagePicker(
                          initImage: _postImage,
                          onPostImageSelected: _onPostImageSelected,
                        ),
                        BlocConsumer<ManagePostBloc, ManagePostState>(
                          listener: (context, state) {
                            state.whenOrNull(
                              createSuccuss: () {
                                showSuccussSnackBar(
                                  context,
                                  context.loc
                                      .your_job_offer_was_successfully_posted,
                                );
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
                              },
                              editSuccuss: () {
                                showSuccussSnackBar(
                                  context,
                                  context.loc
                                      .your_job_offer_was_successfully_edited,
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
                                  _jobPost.objectId == null
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
        ));
  }

  void _onPressed(BuildContext context) {
    if (_keyFrom.currentState?.validate() ?? false) {
      _keyFrom.currentState?.save();

      _jobPost
        ..postDescription = _description
        ..postCategory = _category
        ..postTitle = _title
        ..author = context.read<AuthBloc>().getCurrentUser()!
        ..jobTypes = _jobTypes!
        ..postLocation = _jobGeoLocation!
        ..postHumanReadableLocation = _humanReadableLocation
        ..postImage = _postImage;

      if (_jobPost.objectId == null) {
        context.read<ManagePostBloc>().add(ManagePostCreated(_jobPost));
      } else {
        context
            .read<ManagePostBloc>()
            .add(ManagePostEdited(_jobPost, _oldPostImage));
      }
    }
  }

  void _onUserLocationDetermined(UserLocation userLocation) {
    _humanReadableLocation = userLocation.userCity?.getHumanReadableCityName();
    _jobGeoLocation = userLocation.userGeoLocation;
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

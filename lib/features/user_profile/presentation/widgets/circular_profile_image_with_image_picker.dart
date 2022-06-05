import 'dart:developer';
import 'dart:io';

import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/circular_profile_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class CircularProfileImageWithImagePicker extends StatefulWidget {
  final ParseFile? initProfileImage;
  final void Function(
    String? profileImagePath,
    String? profileImageName,
  ) onProfileImageSelected;
  const CircularProfileImageWithImagePicker({
    Key? key,
    required this.onProfileImageSelected,
    required this.initProfileImage,
  }) : super(key: key);

  @override
  State<CircularProfileImageWithImagePicker> createState() =>
      _CircularProfileImageWithImagePickerState();
}

class _CircularProfileImageWithImagePickerState
    extends State<CircularProfileImageWithImagePicker> {
  final ImagePicker _picker = ImagePicker();
  XFile? _profileImageFile;
  late var _initProfileImage = widget.initProfileImage;

  Future<void> _getLostData() async {
    LostDataResponse response = await _picker.retrieveLostData();

    if (response.isEmpty) {
      return;
    }
    final lostFile = response.file;
    if (lostFile != null) {
      _onProfileImageSelected(lostFile);
    } else {
      log('Error while getting the lost data (edit profile) form activity destruction on android.',
          error: response.exception.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      _getLostData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 150,
      child: InkWell(
        onTap: () async {
          final selectedPhotoResult = await showModalBottomSheetToSelectPhoto(
            context,
            _isThereImageToShow,
          );
          if (selectedPhotoResult == null) {
            return;
          }
          selectedPhotoResult.fold((removeTheImage) {
            _onProfileImageSelected(null);
            _initProfileImage = null;
          }, (selectedPhoto) {
            if (selectedPhoto != null) {
              _onProfileImageSelected(selectedPhoto);
              _initProfileImage = null;
            }
          });
        },
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 100),
          child: _profileImageFile == null && _initProfileImage == null
              ? const CircularProfileImage(
                  profileImage: null,
                  height: 150,
                  width: 150,
                )
              : Stack(
                  children: [
                    Positioned.fill(
                      child: _initProfileImage == null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(
                                500,
                              ),
                              child: Image.file(
                                File.fromUri(
                                  Uri.file(
                                    _profileImageFile!.path,
                                  ),
                                ),
                                fit: BoxFit.cover,
                                height: 150,
                                cacheHeight: 150,
                              ),
                            )
                          : Hero(
                              tag: 'profileImage',
                              child: CircularProfileImage(
                                profileImage: _initProfileImage,
                                height: 150,
                                width: 150,
                              ),
                            ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomCenter,
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                context.loc.edit,
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              const Icon(
                                Icons.edit_rounded,
                                size: 15,
                              )
                            ],
                          )),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  bool get _isThereImageToShow =>
      _profileImageFile != null || _initProfileImage != null;

  void _onProfileImageSelected(XFile? profileImageFile) {
    if (mounted) {
      setState(() {
        _profileImageFile = profileImageFile;
      });
    }
    widget.onProfileImageSelected(
      profileImageFile?.path,
      profileImageFile?.name,
    );
  }
}

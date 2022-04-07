import 'dart:developer';
import 'dart:io';

import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImage extends StatefulWidget {
  final void Function({
    required String? profileImagePath,
    required String? profileImageName,
  }) onProfileImageSelected;
  const ProfileImage({
    Key? key,
    required this.onProfileImageSelected,
  }) : super(key: key);

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  final ImagePicker _picker = ImagePicker();
  XFile? _profileImageFile;

  Future<void> _getLostData() async {
    LostDataResponse response = await _picker.retrieveLostData();

    if (response.isEmpty) {
      return;
    }
    final lostFile = response.file;
    if (lostFile != null) {
      _onProfileImageSelected(lostFile);
    } else {
      log('Error while getting the lost data (ProfileImage [Create account]) form activity destruction on android.',
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LineWithTextOnRow(
          text: context.loc.profile_image,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8.0, left: 4),
          height: 100,
          width: 105,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurface,
            borderRadius: BorderRadius.circular(
              5,
            ),
          ),
          child: InkWell(
            onTap: () async {
              final selectedPhoto =
                  await showModalBottomSheetToSelectPhoto(context);
              if (selectedPhoto != null) {
                _onProfileImageSelected(selectedPhoto);
              }
            },
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 100),
              child: _profileImageFile == null
                  ? const Icon(Icons.add_photo_alternate_outlined, size: 50)
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(
                        1,
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.file(
                              File.fromUri(
                                Uri.file(
                                  _profileImageFile!.path,
                                ),
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              onTap: () {
                                _onProfileImageSelected(null);
                              },
                              child: Container(
                                padding: EdgeInsets.zero,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.primary,
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.highlight_remove_rounded,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }

  void _onProfileImageSelected(XFile? profileImageFile) {
    if (mounted) {
      setState(() {
        _profileImageFile = profileImageFile;
      });
    }
    widget.onProfileImageSelected(
        profileImageName: profileImageFile?.name,
        profileImagePath: profileImageFile?.path);
  }
}

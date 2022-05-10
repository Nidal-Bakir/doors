import 'dart:developer';
import 'dart:io';

import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:doors/core/widgets/network_image_from_parse_file.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class PostImageHeadLineWithImagePicker extends StatefulWidget {
  final ParseFile? initImage;
  final void Function(
    String? postImagePath,
    String? postImageName,
  ) onPostImageSelected;
  const PostImageHeadLineWithImagePicker({
    Key? key,
    required this.onPostImageSelected,
    required this.initImage,
  }) : super(key: key);

  @override
  State<PostImageHeadLineWithImagePicker> createState() =>
      _PostImageHeadLineWithImagePickerState();
}

class _PostImageHeadLineWithImagePickerState
    extends State<PostImageHeadLineWithImagePicker> {
  final ImagePicker _picker = ImagePicker();
  XFile? _postImageFile;
  late var _initPostImage = widget.initImage;

  Future<void> _getLostData() async {
    LostDataResponse response = await _picker.retrieveLostData();

    if (response.isEmpty) {
      return;
    }
    final lostFile = response.file;
    if (lostFile != null) {
      _onPostImageSelected(lostFile);
    } else {
      log('Error while getting the lost data (post image [Create/edit post]) form activity destruction on android.',
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
          text: context.loc.service_image,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8.0, left: 4),
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurface,
            borderRadius: BorderRadius.circular(5),
          ),
          child: InkWell(
            onTap: () async {
              final selectedPhotoResult =
                  await showModalBottomSheetToSelectPhoto(
                context,
                _isTherePostImageToShow,
              );
              if (selectedPhotoResult == null) {
                return;
              }
              selectedPhotoResult.fold((removeTheImage) {
                _onPostImageSelected(null);
              }, (selectedPhoto) {
                if (selectedPhoto != null) {
                  _onPostImageSelected(selectedPhoto);
                  _initPostImage = null;
                }
              });
            },
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 100),
              child: _postImageFile == null && _initPostImage == null
                  ? const Icon(Icons.add_photo_alternate_outlined, size: 50)
                  : SizedBox(width: double.infinity,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        child: _initPostImage == null
                            ? Image.file(
                                File.fromUri(
                                  Uri.file(
                                    _postImageFile!.path,
                                  ),
                                ),
                                fit: BoxFit.cover,
                                height: 150,
                                cacheHeight: 150,
                              )
                            : NetworkImageFromParseFile(
                                withHeroAnimation: false,
                                image: _initPostImage,
                                height: 150,
                                cacheHeight: 150,
                              ),
                      ),
                  ),
            ),
          ),
        ),
      ],
    );
  }

  bool get _isTherePostImageToShow =>
      _postImageFile != null || _initPostImage != null;

  void _onPostImageSelected(XFile? postImageFile) {
    if (mounted) {
      setState(() {
        _postImageFile = postImageFile;
      });
    }
    widget.onPostImageSelected(
      postImageFile?.path,
      postImageFile?.name,
    );
  }
}

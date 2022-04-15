import 'dart:io' show Platform;

import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

String extractLangCodeFromPlatformService() {
  // localeName could be (en) or (en_US) or (en_US.UTF-8)
  return Platform.localeName.split('_')[0];
}

String extractISOCountryCodeFromPlatformService() {
  // localeName could be (en) or (en_US) or (en_US.UTF-8)
  try {
    return Platform.localeName.split('_')[1].split('.')[0];
  } on RangeError {
    return 'US';
  }
}

bool notificationListener(
    {required ScrollNotification notification,
    required void Function() onNotify}) {
  if (notification.metrics.pixels >=
      notification.metrics.maxScrollExtent * 0.8) {
    onNotify();
  }
  return true;
}

void showErrorSnackBar(BuildContext context, String content) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        duration: const Duration(seconds: 3),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.error_rounded,
                  color: Theme.of(context).colorScheme.surface,
                ),
                const SizedBox(
                  width: 8,
                ),
                Flexible(
                  child: Text(
                    content,
                    softWrap: true,
                  ),
                ),
              ],
            ),
            IconButton(
              padding: EdgeInsets.zero,
              color: Theme.of(context).colorScheme.surface,
              visualDensity: VisualDensity.compact,
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
              icon: const Icon(
                Icons.close_rounded,
              ),
            )
          ],
        ),
      ),
    );
}

Future<XFile?> showModalBottomSheetToSelectPhoto(BuildContext context) async {
  final _picker = ImagePicker();
  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
    context: context,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              splashColor: Colors.black,
              onTap: () async {
                Navigator.of(context).pop(
                  await _picker.pickImage(
                    source: ImageSource.camera,
                    imageQuality: 30,
                    preferredCameraDevice: CameraDevice.front,
                  ),
                );
              },
              child: SizedBox(
                height: 50,
                width: 50,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.camera),
                    Text(context.loc.camera),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                Navigator.of(context).pop(
                  await _picker.pickImage(
                    source: ImageSource.gallery,
                    imageQuality: 30,
                  ),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.image),
                  Text(context.loc.gallery),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}

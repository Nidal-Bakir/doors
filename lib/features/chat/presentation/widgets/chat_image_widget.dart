import 'dart:io';

import 'package:doors/core/widgets/no_image_provided.dart';
import 'package:flutter/material.dart';

class ChatImageWidget extends StatelessWidget {
  final double height;
  final double width;
 
  final File fileImage;

  const ChatImageWidget({
    Key? key,
 
   required  this.fileImage,
    this.height = 150,
    this.width = 125,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: _FileImage(
              fileImage: fileImage,
              height: height,
              width: width,
            )
    );
  }
}

class _FileImage extends StatelessWidget {
  const _FileImage({
    Key? key,
    required this.fileImage,
    required this.height,
    required this.width,
  }) : super(key: key);

  final File fileImage;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Image.file(
      fileImage,
      height: height,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return child;
        }
        return AnimatedOpacity(
          child: child,
          opacity: frame == null ? 0 : 1,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOut,
        );
      },
      width: width,
      cacheHeight: height.toInt(),
      cacheWidth: width.toInt(),
      errorBuilder: (_, __, ___) =>
          NoImageProvided(height: height, width: width),
      fit: BoxFit.cover,
    );
  }
}

// class ChatImagePlaceHolder extends StatelessWidget {
//   final double height;
//   final double width;
//   const ChatImagePlaceHolder({
//     Key? key,
//     required this.height,
//     required this.width,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       'assets/images/blank-profile-picture.png',
//       height: height,
//       width: width,
//       cacheHeight: height.toInt(),
//       cacheWidth: width.toInt(),
//       fit: BoxFit.cover,
//     );
//   }
// }

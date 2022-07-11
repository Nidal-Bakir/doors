import 'dart:io';

import 'package:flutter/material.dart';

class ChatImageWidget extends StatelessWidget {
  final double height;
  final double width;
  final File? fileImage;
  final Widget? errorBuilderWidget;

  const ChatImageWidget({
    Key? key,
    required this.fileImage,
    required this.height,
    required this.width,
    this.errorBuilderWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: fileImage == null
          ? _ChatImagePlaceHolder(
              height: height,
              width: width,
            )
          : _FileImage(
              fileImage: fileImage!,
              height: height,
              width: width,
              errorBuilderWidget: errorBuilderWidget,
            ),
    );
  }
}

class _FileImage extends StatelessWidget {
  const _FileImage({
    Key? key,
    required this.fileImage,
    required this.height,
    required this.width,
    this.errorBuilderWidget,
  }) : super(key: key);

  final File fileImage;
  final double height;
  final double width;
  final Widget? errorBuilderWidget;

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
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      },
      width: width,
      cacheHeight: height.toInt(),
      cacheWidth: width.toInt(),
      errorBuilder: (_, __, ___) =>
          errorBuilderWidget ?? _ChatImagePlaceHolder(height: height, width: width),
      fit: BoxFit.cover,
    );
  }
}

class _ChatImagePlaceHolder extends StatelessWidget {
  final double? height;
  final double? width;
  const _ChatImagePlaceHolder({
    Key? key,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: Colors.grey[300],
      child: Center(
        child: Icon(
          Icons.image_rounded,
          size: 30,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}

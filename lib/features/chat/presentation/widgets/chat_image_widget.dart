import 'dart:io';

import 'package:doors/features/chat/presentation/screens/image_viewer.dart';
import 'package:flutter/material.dart';

class ChatImageWidget extends StatelessWidget {
  final double height;
  final double width;
  final File? fileImage;
  final Widget? errorBuilderWidget;
  final BoxFit boxFit;

  const ChatImageWidget({
    Key? key,
    required this.fileImage,
    required this.height,
    required this.width,
    this.errorBuilderWidget,
    this.boxFit = BoxFit.cover,
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
              boxFit: boxFit,
              errorBuilderWidget: errorBuilderWidget,
            ),
    );
  }
}

class _FileImage extends StatefulWidget {
  const _FileImage({
    Key? key,
    required this.fileImage,
    required this.height,
    required this.width,
    required this.boxFit,
    this.errorBuilderWidget,
  }) : super(key: key);

  final File fileImage;
  final double height;
  final double width;
  final Widget? errorBuilderWidget;
  final BoxFit boxFit;

  @override
  State<_FileImage> createState() => _FileImageState();
}

class _FileImageState extends State<_FileImage> {
  var _hasError = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_hasError) {
          return;
        }
        Navigator.of(context).pushNamed(
          ImageViewer.routeName,
          arguments: widget.fileImage,
        );
      },
      child: Hero(
        tag: widget.fileImage.path,
        child: Image.file(
          widget.fileImage,
          height: widget.height,
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
          width: widget.width,
          cacheHeight: widget.height.toInt(),
          cacheWidth: widget.width.toInt(),
          errorBuilder: (_, __, ___) {
            _hasError = true;
            return widget.errorBuilderWidget ??
                _ChatImagePlaceHolder(
                  height: widget.height,
                  width: widget.width,
                );
          },
          fit: widget.boxFit,
        ),
      ),
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

import 'dart:io';

import 'package:flutter/material.dart';

class CircularProfileImage extends StatelessWidget {
  final double height;
  final double width;
  final String? url;
  final File? fileImage;

  const CircularProfileImage({
    Key? key,
    this.url,
    this.fileImage,
    this.height = 40,
    this.width = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(
          500,
        ),
      ),
      child: ClipOval(
        child: (url == null && fileImage == null)
            ? _DefaultProfileImage(height: height, width: width)
            : fileImage != null
                ? _FileImage(
                    fileImage: fileImage!,
                    height: height,
                    width: width,
                  )
                : _NetworkImage(
                    url: url!,
                    height: height,
                    width: width,
                  ),
      ),
    );
  }
}

class _NetworkImage extends StatelessWidget {
  const _NetworkImage({
    Key? key,
    required this.url,
    required this.height,
    required this.width,
  }) : super(key: key);

  final String url;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      height: height,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return SizedBox.square(
          dimension: width,
          child: Stack(
            children: [
              _DefaultProfileImage(height: height, width: width),
              Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              ),
            ],
          ),
        );
      },
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
          _DefaultProfileImage(height: height, width: width),
      fit: BoxFit.cover,
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
          _DefaultProfileImage(height: height, width: width),
      fit: BoxFit.cover,
    );
  }
}

class _DefaultProfileImage extends StatelessWidget {
  final double height;
  final double width;
  const _DefaultProfileImage({
    Key? key,
    this.height = 40,
    this.width = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/blank-profile-picture.png',
      height: height,
      width: width,
      cacheHeight: height.toInt(),
      cacheWidth: width.toInt(),
      fit: BoxFit.cover,
    );
  }
}

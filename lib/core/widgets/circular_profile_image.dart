import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class CircularProfileImage extends StatelessWidget {
  final double height;
  final double width;
  final ParseFile? profileImage;

  const CircularProfileImage({
    Key? key,
    required this.profileImage,
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
          50,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          50,
        ),
        child: (profileImage == null || profileImage?.url == null)
            ? const _DefaultProfileImage()
            : Image.network(
                profileImage!.url!,
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
                errorBuilder: (_, __, ___) => const _DefaultProfileImage(),
                fit: BoxFit.cover,
              ),
      ),
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

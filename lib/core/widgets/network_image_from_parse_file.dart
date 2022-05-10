import 'package:doors/core/widgets/no_image_provided.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class NetworkImageFromParseFile extends StatelessWidget {
  final ParseFile? image;
  final BoxFit boxFit;
  final double? height;
  final double? width;
  final int? cacheHeight;
  final int? cacheWidth;
  final bool withHeroAnimation;

  const NetworkImageFromParseFile({
    Key? key,
    required this.image,
    this.boxFit = BoxFit.cover,
    this.height,
    this.width,
    this.cacheHeight,
    this.cacheWidth,
    this.withHeroAnimation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (image != null && image?.url != null) {
      if (withHeroAnimation) {
        return Hero(
          tag: image!.url!,
          child: _NetworkImage(
            image: image,
            boxFit: boxFit,
            cacheHeight: cacheHeight,
            cacheWidth: cacheWidth,
            height: height,
            width: width,
          ),
        );
      } else {
        return _NetworkImage(
          image: image,
          boxFit: boxFit,
          cacheHeight: cacheHeight,
          cacheWidth: cacheWidth,
          height: height,
          width: width,
        );
      }
    }

    return NoImageProvided(height: height, width: width);
  }
}

class _NetworkImage extends StatelessWidget {
  final ParseFile? image;
  final BoxFit boxFit;
  final double? height;
  final double? width;
  final int? cacheHeight;
  final int? cacheWidth;
  const _NetworkImage(
      {Key? key,
      required this.image,
      this.boxFit = BoxFit.cover,
      this.height,
      this.width,
      this.cacheHeight,
      this.cacheWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image!.url!,
        fit: boxFit,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
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
        height: height,
        width: width,
        cacheHeight: cacheHeight,
        cacheWidth: cacheWidth,
        errorBuilder: (_, __, ___) =>
            NoImageProvided(height: height, width: width));
  }
}

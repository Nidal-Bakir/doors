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
          child: Image.network(
            image!.url!,
            fit: boxFit,
            height: height,
            width: width,
            cacheHeight: cacheHeight,
            cacheWidth: cacheWidth,
            errorBuilder: (_, __, ___) => const NoImageProvided(),
          ),
        );
      } else {
        return Image.network(
          image!.url!,
          fit: boxFit,
          height: height,
          width: width,
          cacheHeight: cacheHeight,
          cacheWidth: cacheWidth,
          errorBuilder: (_, __, ___) => const NoImageProvided(),
        );
      }
    }

    return const NoImageProvided();
  }
}

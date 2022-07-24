import 'dart:io';

import 'package:doors/core/widgets/no_image_provided.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewer extends StatefulWidget {
  static const routeName = '/image-viewer';
  final File imageFile;
  const ImageViewer({Key? key, required this.imageFile}) : super(key: key);

  @override
  State<ImageViewer> createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.bottom,
      ],
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.bottom,
        SystemUiOverlay.top,
      ],
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return PhotoView(
      imageProvider: FileImage(
        widget.imageFile,
      ),
      loadingBuilder: (context, loadingProgress) {
        if (loadingProgress == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return Center(
          child: CircularProgressIndicator(
            color: _theme.colorScheme.primary,
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      },
      errorBuilder: (_, __, ___) {
        return const NoImageProvided(
          height: 300,
          width: 300,
        );
      },
      heroAttributes: PhotoViewHeroAttributes(
        tag: widget.imageFile.path,
      ),
    );
  }
}

import 'dart:io';

import 'package:equatable/equatable.dart';

class MediaFile extends Equatable {
  final String? mediaUrl;
  final File? mediaFile;

  const MediaFile({
    required this.mediaUrl,
    required this.mediaFile,
  });

  @override
  List<Object?> get props => [
        mediaUrl,
        mediaFile?.path,
      ];
}

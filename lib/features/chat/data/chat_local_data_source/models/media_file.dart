import 'dart:io';

import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:equatable/equatable.dart';

class MediaFile extends Equatable {
  final String? mediaUrl;
  final File? file;
  final String? thumbnailUrl;
  final File? thumbnailFile;

  const MediaFile({
    required this.mediaUrl,
    required this.file,
    this.thumbnailFile,
    this.thumbnailUrl,
  });
  MediaFile copyWith({
    Object? mediaUrl = undefined,
    Object? thumbnailUrl = undefined,
    Object? file = undefined,
    Object? thumbnailFile = undefined,
  }) =>
      MediaFile(
        mediaUrl: isNotPassedParameter(mediaUrl)
            ? this.mediaUrl
            : (mediaUrl as String?),
        file: isNotPassedParameter(file) ? this.file : (file as File?),
        thumbnailFile: isNotPassedParameter(thumbnailFile)
            ? this.thumbnailFile
            : (thumbnailFile as File?),
        thumbnailUrl: isNotPassedParameter(thumbnailUrl)
            ? this.thumbnailUrl
            : (thumbnailUrl as String?),
      );
  @override
  List<Object?> get props => [
        mediaUrl,
        file?.path,
        thumbnailUrl,
        thumbnailFile,
      ];
}

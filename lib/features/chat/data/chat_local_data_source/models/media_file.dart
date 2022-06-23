import 'dart:io';

import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:equatable/equatable.dart';

class MediaFile extends Equatable {
  final String? mediaUrl;
  final File? file;

  const MediaFile({
    required this.mediaUrl,
    required this.file,
  });
  MediaFile copyWith(
          {Object? mediaUrl = undefined, Object? file = undefined}) =>
      MediaFile(
        mediaUrl: isNotPassedParameter(mediaUrl)
            ? this.mediaUrl
            : (mediaUrl as String?),
        file: isNotPassedParameter(file) ? this.file : (file as File?),
      );
  @override
  List<Object?> get props => [
        mediaUrl,
        file?.path,
      ];
}

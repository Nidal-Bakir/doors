import 'package:doors/core/enums/enums.dart';
import 'package:equatable/equatable.dart';

abstract class MessageMetaData extends Equatable {
  const MessageMetaData();

  factory MessageMetaData.factory(
      String messageType, Map<String, dynamic> jsonMap) {
    if (messageType == MessageType.text.name) {
      return TextMessageMetaData.fromJson(jsonMap);
    } else if (messageType == MessageType.image.name) {
      return ImageMessageMetaData.fromJson(jsonMap);
    }
    return UnsupportedMessageMateData(jsonMap);
  }

  Map<String, dynamic> toJson();
}

class UnsupportedMessageMateData extends MessageMetaData {
  final Map<String, dynamic> metaData;

  const UnsupportedMessageMateData(this.metaData);

  @override
  Map<String, dynamic> toJson() => metaData;

  @override
  List<Object?> get props => [metaData];
}

class TextMessageMetaData extends MessageMetaData {
  const TextMessageMetaData();

  factory TextMessageMetaData.fromJson(Map<String, dynamic> jsonMap) {
    return const TextMessageMetaData();
  }

  @override
  List<Object?> get props => [];

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

class ImageMessageMetaData extends MessageMetaData {
  final int imageHight;
  final int imageWidth;
  final int imageSize;

  const ImageMessageMetaData({
    required this.imageHight,
    required this.imageWidth,
    required this.imageSize,
  });

  factory ImageMessageMetaData.fromJson(Map<String, dynamic> jsonMap) {
    return ImageMessageMetaData(
      imageHight: jsonMap["imageHight"],
      imageWidth: jsonMap["imageWidth"],
      imageSize: jsonMap["imageSize"],
    );
  }
  @override
  Map<String, dynamic> toJson() => {
        "imageHight": imageHight,
        "imageWidth": imageWidth,
        "imageSize": imageSize,
      };

  @override
  List<Object?> get props => [
        imageHight,
        imageWidth,
        imageSize,
      ];
}

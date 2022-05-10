import 'package:doors/core/errors/server_error.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

/// Save the new image to parse server
///
/// Throws [ServerException] in case of connection error or parse error.
Future<void> saveNewImageToParseServer(ParseFile newImage) async {
  final ParseResponse saveImageResponse;
  try {
    saveImageResponse = await newImage.save();
  } catch (e) {
    throw const NoConnectionException('can not save the new image');
  }
  if (!saveImageResponse.success) {
    throw ParseException.extractParseException(saveImageResponse.error);
  }
}

/// Delete the [oldImage] if the user delete or replace the [currentImage].
/// 
/// [objectId]: The object id that's holding the image.
///
/// [className]: The name of the class which the object holding the image live in.
///
/// [imageFieldName]: The name of the field that is holding the image.
///
/// Throws [ServerException] in case of connection error or parse error.
Future<void> deleteOldImageIfTheCurrentImageChanged({
  required ParseFile? oldImage,
  required ParseFile? currentImage,
  required String objectId,
  required String className,
  required String imageFieldName,
}) async {
  if (oldImage != null && _isCurrentImageChanged(currentImage)) {
    await deleteImageFromParserServer(
      objectId: objectId,
      className: className,
      imageFieldName: imageFieldName,
    );
  }
}

bool _isCurrentImageChanged(ParseFile? currentImage) {
  if (currentImage == null) {
    return true;
  } else {
    if (!currentImage.saved) {
      return true;
    }
  }
  return false;
}

/// Delete delete image from parse server
///
/// [objectId]: The object id that's holding the image
///
/// [className]: The name of the class which the object holding the image live in.
///
/// [imageFieldName]: The name of the field that is holding the image
///
/// Throws [ServerException] in case of connection error or parse error.
Future<void> deleteImageFromParserServer({
  required String objectId,
  required String className,
  required String imageFieldName,
}) async {
  final _deletePostImageCloudFunction = ParseCloudFunction('deleteImage');
  final ParseResponse deletePostImageCloudResponse;
  try {
    deletePostImageCloudResponse = await _deletePostImageCloudFunction.execute(
      parameters: {
        'objectId': objectId,
        'className': className,
        'imageFieldName': imageFieldName
      },
    );
  } catch (e) {
    throw const NoConnectionException('can not delete the image');
  }
  if (!deletePostImageCloudResponse.success) {
    throw ParseException.extractParseException(
        deletePostImageCloudResponse.error);
  }
}

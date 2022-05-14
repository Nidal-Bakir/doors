part of 'manage_post_bloc.dart';

@freezed
class ManagePostEvent with _$ManagePostEvent {
  const factory ManagePostEvent.created(ServicePost newPost) = ManagePostCreated;
  const factory ManagePostEvent.edited(ServicePost editPost,ParseFile? oldPostImage) = ManagePostEdited;
  const factory ManagePostEvent.deleted(ServicePost post) = ManagePostDeleted;
}
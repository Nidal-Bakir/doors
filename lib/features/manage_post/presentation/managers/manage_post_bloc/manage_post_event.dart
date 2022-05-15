part of 'manage_post_bloc.dart';

@freezed
class ManagePostEvent with _$ManagePostEvent {
  const factory ManagePostEvent.created(Post newPost) = ManagePostCreated;
  const factory ManagePostEvent.edited(Post editPost,ParseFile? oldPostImage) = ManagePostEdited;
  const factory ManagePostEvent.deleted(Post post) = ManagePostDeleted;
}
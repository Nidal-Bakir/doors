part of 'manage_post_bloc.dart';

@freezed
class ManagePostState with _$ManagePostState {
  const factory ManagePostState.initial() = ManagePostInitial;
  const factory ManagePostState.inProgress() = ManagePostInProgress;
  const factory ManagePostState.createSuccuss() = ManagePostCreateSuccuss;
  const factory ManagePostState.editSuccuss() = ManagePostEditSuccuss;
  const factory ManagePostState.deleteSuccuss() = ManagePostDeleteSuccuss;
  const factory ManagePostState.operationFailure(ExceptionBase error) =
      ManagePostOperationFailure;
}

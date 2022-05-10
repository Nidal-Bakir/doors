part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.initial() = EditProfileInitial;
  const factory EditProfileState.inProgress() = EditProfileInProgress;
  const factory EditProfileState.editSuccuss() = EditProfileEditSuccuss;
  const factory EditProfileState.editFailure(ExceptionBase error) = EditProfileEditFailure;
}

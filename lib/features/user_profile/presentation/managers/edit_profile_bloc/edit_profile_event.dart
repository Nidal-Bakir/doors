part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.edited(User editedProfile,ParseFile? oldProfileImage) =EditProfileEdited ;
}
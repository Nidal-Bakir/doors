import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/features/user_profile/repository/user_profile_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final UserProfileRepository _userProfileRepository;
  EditProfileBloc(this._userProfileRepository)
      : super(const EditProfileInitial()) {
    on<EditProfileEvent>((event, emit) async {
      await event.map(
          edited: (event) async => await _onProfileEdited(event, emit));
    });
  }

  Future<void> _onProfileEdited(
      EditProfileEdited event, Emitter<EditProfileState> emit) async {
    emit(const EditProfileInProgress());

    final editProfileResult = await _userProfileRepository.editUserProfile(
        event.editedProfile, event.oldProfileImage);

    editProfileResult.fold((error) => emit(EditProfileEditFailure(error)),
        (_) => emit(const EditProfileEditSuccuss()));
  }
}

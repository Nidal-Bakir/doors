import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/features/post/model/post_rate.dart';
import 'package:doors/core/features/post/repository/user_rate_repository.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_rate_bloc.freezed.dart';
part 'user_rate_event.dart';
part 'user_rate_state.dart';

class UserRateBloc extends Bloc<UserRateEvent, UserRateState> {
  final UserRateRepository _userRateRepository;
  UserRateBloc(this._userRateRepository) : super(const UserRateInProgress()) {
    on<UserRateEvent>((event, emit) async {
      await event.map(
        loaded: (event) async => await _onPostRateLoaded(event, emit),
        posted: (event) async => await _onPostRatePosted(event, emit),
      );
    });
  }

  Future<void> _onPostRateLoaded(
      UserRateLoaded event, Emitter<UserRateState> emit) async {
    emit(const UserRateInProgress());
    final userRateResult =
        await _userRateRepository.getUserRateOnPost(event.post);
    userRateResult.fold((error) => emit(UserRateLoadFailure(error)),
        (postRate) => emit(UserRateLoadSuccess(postRate)));
  }

  Future<void> _onPostRatePosted(
      UserRatePosted event, Emitter<UserRateState> emit) async {
    emit(const UserRateInProgress());

    if (event.postRate.rate == 0.0) {
      final removeUserRateResult =
          await _userRateRepository.removeUserRate(event.postRate);
      removeUserRateResult.fold((error) => emit(UserRateLoadFailure(error)),
          (postRate) => emit(const UserRateLoadSuccess(null)));
      return;
    }

    final setUserRateResult =
        await _userRateRepository.setUserRateOnPost(event.postRate);
    setUserRateResult.fold((error) => emit(UserRateLoadFailure(error)),
        (postRate) => emit(UserRateLoadSuccess(postRate)));
  }
}

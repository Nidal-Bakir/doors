import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/features/user_location/models/user_location.dart';
import 'package:doors/core/features/user_location/repository/user_location_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as concurrency;
part 'user_location_event.dart';
part 'user_location_state.dart';
part 'user_location_bloc.freezed.dart';

class UserLocationBloc extends Bloc<UserLocationEvent, UserLocationState> {
  final UserLocationRepository _userLocationRepository;
  UserLocationBloc(this._userLocationRepository)
      : super(const UserLocationInitial()) {
    on<UserLocationEvent>((event, emit) async {
      await event.map(
          determineUserLocationUsingGPSRequested: (event) async =>
              await _onDetermineUserLocationUsingGPSRequested(event, emit));
    }, transformer: concurrency.droppable());
  }

  _onDetermineUserLocationUsingGPSRequested(
      UserLocationDetermineUserLocationUsingGPSRequested event,
      Emitter<UserLocationState> emit) async {
    emit(const UserLocationInProgress());

    final _userLocation =
        await _userLocationRepository.getUserLocationUsingGPS();
    _userLocation.fold((error) => emit(UserLocationOperationFailure(error)),
        (userLocation) => emit(GpsBasedLoadSuccuss(userLocation)));
  }
}

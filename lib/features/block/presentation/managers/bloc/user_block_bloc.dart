import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/features/block/repository/block_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_block_event.dart';
part 'user_block_state.dart';
part 'user_block_bloc.freezed.dart';

class UserBlockBloc extends Bloc<UserBlockEvent, UserBlockState> {
  final BlockRepository _blockRepository;

  UserBlockBloc(this._blockRepository) : super(const UserBlockInitial()) {
    on<UserBlockEvent>((event, emit) async {
      await event.map(
        blocked: (event) async => await _onUserBlocked(event, emit),
        unblocked: (event) async => await _onUserUnblocked(event, emit),
      );
    });
  }

  Future<void> _onUserBlocked(
    UserBlockBlocked event,
    Emitter<UserBlockState> emit,
  ) async {
    emit(const UserBlockInProgress());

    final blockResult = await _blockRepository.blockUser(event.remoteUserId);
    blockResult.fold(
      (error) => emit(UserBlockBlockFailure(error)),
      (_) => emit(const UserBlockBlockSuccess()),
    );
  }

  Future<void> _onUserUnblocked(
    UserBlockUnblocked event,
    Emitter<UserBlockState> emit,
  ) async {
    emit(const UserBlockInProgress());

    final blockResult = await _blockRepository.unblockUser(event.remoteUserId);
    blockResult.fold(
      (error) => emit(UserBlockUnblockFailure(error)),
      (_) => emit(const UserBlockUnblockSuccess()),
    );
  }
}

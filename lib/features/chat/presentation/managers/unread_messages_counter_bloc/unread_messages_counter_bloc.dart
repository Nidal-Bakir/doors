import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:doors/features/chat/repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'unread_messages_counter_event.dart';
part 'unread_messages_counter_state.dart';
part 'unread_messages_counter_bloc.freezed.dart';

class UnreadMessagesCounterBloc
    extends Bloc<UnreadMessagesCounterEvent, UnreadMessagesCounterState> {
  final ChatRepository _chatRepository;

  late final StreamSubscription _overallUnreadMessageCountStreamSubscription;

  UnreadMessagesCounterBloc(this._chatRepository)
      : super(const UnreadMessagesCounterChangeSuccess(0)) {
    on<UnreadMessagesCounterEvent>((event, emit) {
      event.map(
        changed: (event) => _onUnreadMessagesCountChanged(event, emit),
      );
    });

    _overallUnreadMessageCountStreamSubscription =
        _chatRepository.overallUnReadMessagesCountStream.listen(
      (event) {
        add(_UnreadMessagesCounterChanged(event));
      },
    );
  }

  void _onUnreadMessagesCountChanged(
    _UnreadMessagesCounterChanged event,
    Emitter<UnreadMessagesCounterState> emit,
  ) {
    emit(UnreadMessagesCounterChangeSuccess(event.unreadMessageCount));
  }

  @override
  Future<void> close() {
    _overallUnreadMessageCountStreamSubscription.cancel();
    return super.close();
  }
}

import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:rxdart/rxdart.dart';

typedef EitherServerErrorOrLocalMessage
    = Either<ServerException, LocalChatMessage>;

typedef ValueStreamOfEitherTuple2OrLocalMessage
    = ValueStream<Either<Tuple2<int, int>, LocalChatMessage>>;

typedef BehaviorSubjectOfEitherTuple2OrLocalMessage
    = BehaviorSubject<Either<Tuple2<int, int>, LocalChatMessage>>;


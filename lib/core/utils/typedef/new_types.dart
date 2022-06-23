import 'dart:collection';

import 'package:dartz/dartz.dart';

typedef EitherDataOrDataWithError<E, T>
    = Either<Tuple2<E, UnmodifiableListView<T>>, UnmodifiableListView<T>>;

typedef VoidCallbackWithParam<T> = void Function(T onCallback);

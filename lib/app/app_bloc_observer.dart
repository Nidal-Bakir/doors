import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log('bloc created: ' + bloc.toString());
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log('bloc: ' +
        bloc.toString() +
        '  \n Event: ' +
        transition.event +
        '  \n current state: ' +
        transition.currentState +
        '  \n nextState: ' +
        transition.nextState);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    log('bloc error in: ' + bloc.toString(),
        error: error, stackTrace: stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    log('bloc closed: ' + bloc.toString());
  }
}

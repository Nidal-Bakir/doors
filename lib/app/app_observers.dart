import 'dart:developer';
import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
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
        transition.event.toString() +
        '  \n current state: ' +
        transition.currentState.toString() +
        '  \n nextState: ' +
        transition.nextState.toString());
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

class NavigationHistoryObserver extends NavigatorObserver {
  /// A list of all the past routes
  final List<Route<dynamic>?> _history = <Route<dynamic>?>[];

  /// Gets a clone of the navigation history as an immutable list.
  BuiltList<Route<dynamic>> get history =>
      BuiltList<Route<dynamic>>.from(_history);

  /// Gets the top route in the navigation stack.
  Route<dynamic>? get top => _history.last;

  /// A list of all routes that were popped to reach the current.
  final List<Route<dynamic>?> _poppedRoutes = <Route<dynamic>?>[];

  /// Gets a clone of the popped routes as an immutable list.
  BuiltList<Route<dynamic>> get poppedRoutes =>
      BuiltList<Route<dynamic>>.from(_poppedRoutes);

  /// Gets the next route in the navigation history, which is the most recently popped route.
  Route<dynamic>? get next => _poppedRoutes.last;

  void reset() {
    _history.clear();
    _poppedRoutes.clear();
    _instance = null;
  }

  static NavigationHistoryObserver? _instance;

  NavigationHistoryObserver._internal();

  factory NavigationHistoryObserver() {
    return _instance ??= NavigationHistoryObserver._internal();
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _poppedRoutes.add(_history.last);
    _history.removeLast();
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _history.add(route);
    _poppedRoutes.remove(route);
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _history.remove(route);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    int oldRouteIndex = _history.indexOf(oldRoute);
    _history.replaceRange(oldRouteIndex, oldRouteIndex + 1, [newRoute]);
  }
}

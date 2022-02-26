import 'dart:async';
import 'dart:developer';

import 'package:doors/app/app.dart';
import 'package:doors/injection_container/injection_container.dart';
import 'package:flutter/material.dart';

void main() {
  // Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () {
      init(); // init the app dependency.
      runApp(const App());
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

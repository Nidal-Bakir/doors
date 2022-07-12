import 'dart:async';
import 'dart:developer';

import 'package:doors/app/app.dart';
import 'package:doors/app/app_observers.dart';
import 'package:doors/core/widgets/restart_app.dart';
import 'package:doors/injection_container/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () async {
      await init(); // init the app dependency.

      BlocOverrides.runZoned(
        () => runApp(const RestartApp(child: App())),
        blocObserver: AppBlocObserver(),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

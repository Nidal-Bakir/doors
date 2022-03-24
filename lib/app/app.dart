import 'dart:async';
import 'dart:io';

import 'package:doors/core/config/routes/app_routes.dart';
import 'package:doors/core/config/theme/app_theme.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/utils/global_fanctions/global_fanctions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get_it/get_it.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          lazy: false,
          create: (_) {
            final authBloc = GetIt.I.get<AuthBloc>();
            Timer.run(() {
              authBloc.add(const AuthCurrentUserLoaded());
            });
            return authBloc;
            // return )..);
          },
        )
      ],
      child: MaterialApp(
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        onGenerateTitle: (context) => context.loc.device_app_description,
        theme: defaultLightTheme(extractLangCodeFromPlatformService()),
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }
}



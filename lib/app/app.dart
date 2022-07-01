import 'package:doors/core/config/routes/app_routes.dart';
import 'package:doors/core/config/theme/app_theme.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/features/chat/presentation/managers/messaging_bloc/messaging_bloc.dart';
import 'package:doors/features/manage_post/presentation/managers/manage_post_bloc/manage_post_bloc.dart';
import 'package:doors/features/settings/presentation/managers/bloc/app_locale_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get_it/get_it.dart';

class App extends StatefulWidget {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    // reassign the navigatorKey when the entire widget tree rebuilds
    // to avoid unexpected behaviors with navigation
    App.navigatorKey = GlobalKey<NavigatorState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          lazy: false,
          create: (_) =>
              GetIt.I.get<AuthBloc>()..add(const AuthCurrentUserLoaded()),
        ),
        BlocProvider<MessagingBloc>(
          create: (_) => GetIt.I.get<MessagingBloc>(),
        ),
        BlocProvider<ManagePostBloc>(
          create: (_) => GetIt.I.get<ManagePostBloc>(),
        ),
        BlocProvider<AppLocaleBloc>(
          create: (_) => GetIt.I.get<AppLocaleBloc>(),
        ),
      ],
      child: Builder(builder: (context) {
        return BlocBuilder<AppLocaleBloc, AppLocaleState>(
          builder: (context, state) {
            return state.when(loadSuccess: (appLocale) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                navigatorKey: App.navigatorKey,
                supportedLocales: AppLocalizations.supportedLocales,
                locale: appLocale,
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                onGenerateTitle: (context) =>
                    context.loc.device_app_description,
                theme: defaultLightTheme(extractLangCodeFromPlatformService()),
                onGenerateRoute: onGenerateRoute,
              );
            });
          },
        );
      }),
    );
  }
}

import 'package:app_main/controllers/controllers.dart';
import 'package:app_main/localization.dart';
import 'package:app_main/localizations/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'view/widgets/widgets.dart';

class MyApp extends StatelessWidget {
  static const double _appWidth = 390.0;
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget materialApp = BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
              onGenerateTitle: (context) => context.localization().appName,
              theme: state.theme.getTheme(),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: const [
                Locale('en'),
              ],
              home: BlocProvider(
                create: (context) {
                  return;
                },
                child: const LocaleListenerWidget(child: HomeScreen()),
              ));
        },
      ),
    );
    return materialApp;
  }
}

import 'package:app_main/controllers/controllers.dart';
import 'package:app_main/localization.dart';
import 'package:app_main/localizations/generated/app_localizations.dart';
import 'package:app_main/view/screens/first_screen.dart';
import 'package:flutter/material.dart';

import 'view/widgets/widgets.dart';

class MyApp extends StatelessWidget {
  static const double _appWidth = 390.0;
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget materialApp = ThemeBloc.create(
      child: ThemeBloc.build(
        builder: (context, state) {
          return MaterialApp(
            onGenerateTitle: (context) => context.localization().appName,
            theme: state.theme.getTheme(),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: const [
              Locale('en'),
            ],
            home: const LocaleListenerWidget(child: FirstScreen()),
          );
        },
      ),
    );
    return materialApp;
  }
}

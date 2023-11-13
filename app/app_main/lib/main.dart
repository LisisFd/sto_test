import 'package:app_main/localization.dart';
import 'package:app_main/localizations/generated/app_localizations.dart';
import 'package:app_main/logic/controllers_set_up.dart';
import 'package:app_main/logic/logic.dart';
import 'package:app_main/view/view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ControllersSetUp controllersSetUp = ControllersSetUp.instance;
    _runDependencyInjection(controllersSetUp);

    Widget materialApp = controllersSetUp.createProvidersScope(
      child: ThemeBloc.build(
        builder: (context, state) {
          return MaterialApp(
            onGenerateTitle: (context) => context.localization().appName,
            theme: state.theme.getTheme(),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: const [
              Locale('en'),
            ],
            home: const FirstScreen(),
          );
        },
      ),
    );
    return materialApp;
  }

  void _runDependencyInjection(ControllersSetUp instance) {
    instance.addThemeProvider();
    instance.addNavigationProvider();
  }
}

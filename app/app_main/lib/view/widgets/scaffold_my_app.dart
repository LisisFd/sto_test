import 'package:app_main/config/theme/i_theme.dart';
import 'package:flutter/material.dart';

import '../../logic/logic.dart';
import 'background_widget.dart';

class ScaffoldMyApp extends StatelessWidget {
  final Widget body;

  const ScaffoldMyApp({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    final ITheme theme = ThemeBloc.getCurrentTheme(context);
    // var result = switch (state) {
    // NavigationFirstScreen() => true,
    // NavigationSecondScreen() => () {
    // NavigationBloc.navigateToFirstScreen(context: context);
    // return false;
    // }(),
    // NavigationResultScreen s => () {
    // NavigationBloc.navigateToSecondScreen(
    // context: context, screenType: s.data.screenType);
    // return false;
    // }(),
    // };
    return Scaffold(
      appBar: null,
      body: Stack(
        children: [
          const BackgroundWidget(),
          body,
        ],
      ),
      backgroundColor: theme.getTheme().colorScheme.background,
    );
  }
}

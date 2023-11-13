import 'package:app_main/config/theme/i_theme.dart';
import 'package:flutter/material.dart';

import '../../controllers/controllers.dart';

class ScaffoldMyApp extends StatelessWidget {
  final Widget body;

  const ScaffoldMyApp({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    final ITheme theme = ThemeBloc.getCurrentTheme(context);

    return Scaffold(
      appBar: null,
      body: body,
      backgroundColor: theme.getTheme().colorScheme.background,
    );
  }
}

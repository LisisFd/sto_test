import 'package:app_main/config/config.dart';
import 'package:app_main/controllers/controllers.dart';
import 'package:app_main/localization.dart';
import 'package:flutter/material.dart';

import '../view.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = context.localization();
    final ITheme theme = ThemeBloc.getCurrentTheme(context);
    final TextTheme textTheme = theme.getTheme().textTheme;
    return ScaffoldMyApp(
      body: Column(
        children: [
          Card(
            child: Column(
              children: [
                Text(
                  localization.titleCardPeriod,
                  style: textTheme.titleSmall,
                ),
                Text(
                  localization.descriptionCardPeriod,
                  style: textTheme.labelMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

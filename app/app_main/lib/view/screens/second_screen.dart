import 'package:app_main/config/config.dart';
import 'package:app_main/localization.dart';
import 'package:app_main/logic/logic.dart';
import 'package:flutter/material.dart';

import '../view.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = context.localization();
    final ITheme theme = ThemeBloc.getCurrentTheme(context);
    final TextTheme textTheme = theme.getTheme().textTheme;
    final Size deviceSize = MediaQuery.of(context).size;

    return ScaffoldMyApp(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              localization.titleBirthDay,
              style: textTheme.titleSmall,
            ),
            SizedBox(
              height: deviceSize.height / 2,
              child: const AppYearPicker(),
            ),
            GradientButton(
              title: localization.titleButtonNext,
            ),
          ],
        ),
      ),
    );
  }
}

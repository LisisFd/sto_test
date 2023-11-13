import 'package:app_main/config/config.dart';
import 'package:app_main/localization.dart';
import 'package:app_main/logic/logic.dart';
import 'package:flutter/material.dart';

import '../view.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int? _year;
  void _onChanged(int newYear) {
    setState(() {
      _year = newYear;
    });
  }

  @override
  Widget build(BuildContext context) {
    final localization = context.localization();
    final ITheme theme = ThemeBloc.getCurrentTheme(context);
    final TextTheme textTheme = theme.getTheme().textTheme;
    final Size deviceSize = MediaQuery.of(context).size;
    final int? year = _year;
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
              child: AppYearPicker(
                onChanged: _onChanged,
              ),
            ),
            GradientButton(
              title: localization.titleButtonNext,
              onPressed: year == null
                  ? null
                  : () => NavigationBloc.navigateToResultScreen(
                        context: context,
                        year: year,
                      ),
            ),
          ],
        ),
      ),
    );
  }
}

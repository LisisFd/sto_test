import 'package:app_main/config/config.dart';
import 'package:app_main/controllers/controllers.dart';
import 'package:app_main/localization.dart';
import 'package:flutter/material.dart';

import '../view.dart';

class ResultScreen extends StatelessWidget {
  final String status;
  final String year;
  const ResultScreen({super.key, required this.status, required this.year});

  @override
  Widget build(BuildContext context) {
    final localization = context.localization();
    final ITheme theme = ThemeBloc.getCurrentTheme(context);
    final TextTheme textTheme = theme.getTheme().textTheme;
    final Size deviceSize = MediaQuery.of(context).size;

    return ScaffoldMyApp(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                enabled: false,
                initialValue: status,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                enabled: false,
                initialValue: year,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

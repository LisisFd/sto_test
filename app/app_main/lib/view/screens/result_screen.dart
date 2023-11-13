import 'package:app_main/domain/domain.dart';
import 'package:app_main/localization.dart';
import 'package:flutter/material.dart';

import '../view.dart';

class ResultScreen extends StatelessWidget {
  final ScreenType status;
  final String year;
  const ResultScreen({super.key, required this.status, required this.year});

  @override
  Widget build(BuildContext context) {
    final localization = context.localization();
    return ScaffoldMyApp(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                enabled: false,
                initialValue: status.name(localization),
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

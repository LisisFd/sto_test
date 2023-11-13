import 'package:app_main/localization.dart';
import 'package:flutter/material.dart';

import '../view.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = context.localization();
    const padding = SizedBox(
      height: 50,
    );
    return ScaffoldMyApp(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavigationCard(
                  title: localization.titleCardPeriod,
                  subtitle: localization.descriptionCardPeriod,
                ),
                padding,
                NavigationCard(
                  title: localization.titleCardPregnant,
                  subtitle: localization.descriptionCardPregnant,
                ),
              ],
            ),
          ),
          const BackgroundWidget(),
        ],
      ),
    );
  }
}

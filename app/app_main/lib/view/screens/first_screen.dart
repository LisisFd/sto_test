import 'package:app_main/domain/domain.dart';
import 'package:app_main/localization.dart';
import 'package:app_main/logic/logic.dart';
import 'package:flutter/material.dart';

import '../view.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  void _onCardTap(BuildContext context, ScreenType type) {
    NavigationBloc.navigateToSecondScreen(context: context, screenType: type);
  }

  @override
  Widget build(BuildContext context) {
    final localization = context.localization();
    const padding = SizedBox(
      height: 50,
    );
    return ScaffoldMyApp(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavigationCard(
              screenType: ScreenType.trackPeriod,
              title: localization.titleCardPeriod,
              subtitle: localization.descriptionCardPeriod,
              onTap: _onCardTap,
            ),
            padding,
            NavigationCard(
              screenType: ScreenType.pregnant,
              title: localization.titleCardPregnant,
              subtitle: localization.descriptionCardPregnant,
              onTap: _onCardTap,
            ),
          ],
        ),
      ),
    );
  }
}

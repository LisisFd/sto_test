import 'package:app_main/config/config.dart';
import 'package:app_main/domain/domain.dart';
import 'package:flutter/material.dart';

import '../../logic/logic.dart';

class NavigationCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final ScreenType screenType;
  final Function(BuildContext context, ScreenType type)? onTap;
  const NavigationCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.onTap,
    required this.screenType,
  });

  @override
  Widget build(BuildContext context) {
    final ITheme theme = ThemeBloc.getCurrentTheme(context);
    final TextTheme textTheme = theme.getTheme().textTheme;
    const Widget padding = SizedBox(
      width: 20,
    );
    return GestureDetector(
      onTap: () => onTap?.call(context, screenType),
      child: Card(
        child: Padding(
          padding: ThemeConstatnts.defaultCardPadding,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: textTheme.titleSmall,
                  ),
                  Text(
                    subtitle,
                    style: textTheme.labelMedium,
                  ),
                ],
              ),
              padding,
              const SizedBox(
                height: 30,
                width: 30,
                child: IconButton.filled(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 25,
                  ),
                  onPressed: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:app_main/config/config.dart';
import 'package:flutter/material.dart';

import '../../controllers/theme/theme.dart';

class NavigationCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function()? onTap;
  const NavigationCard(
      {super.key, required this.title, required this.subtitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    final ITheme theme = ThemeBloc.getCurrentTheme(context);
    final TextTheme textTheme = theme.getTheme().textTheme;
    const Widget padding = SizedBox(
      width: 20,
    );
    return GestureDetector(
      onTap: onTap,
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

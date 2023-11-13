import 'package:app_main/localization.dart';
import 'package:app_main/localizations/localizations.dart';
import 'package:json_annotation/json_annotation.dart';

class _ScreenTypeTranslations {
  static String trackPeriod(AppLocalizations l) => l.titleCardPeriod;

  static String pregnant(AppLocalizations l) => l.titleCardPregnant;
}

enum ScreenType {
  @JsonValue("track_period")
  trackPeriod(_ScreenTypeTranslations.trackPeriod),
  @JsonValue("pregnant")
  pregnant(_ScreenTypeTranslations.pregnant);

  const ScreenType(
    this.name,
  );

  final LocalizeDelegate name;
}

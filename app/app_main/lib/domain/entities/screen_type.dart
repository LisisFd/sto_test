import 'package:json_annotation/json_annotation.dart';

enum ScreenType {
  @JsonValue("track_period")
  trackPeriod,
  @JsonValue("pregnant")
  pregnant,
}

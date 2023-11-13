import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

import 'screen_type.dart';

part 'gen/data.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class Data {
  final ScreenType screenType;
  final int year;

  Map<String, dynamic> toJson() => _$DataToJson(this);

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  const Data({
    required this.screenType,
    required this.year,
  });
}

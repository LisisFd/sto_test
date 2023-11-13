// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../data.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DataCWProxy {
  Data screenType(ScreenType screenType);

  Data year(int year);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Data(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Data(...).copyWith(id: 12, name: "My name")
  /// ````
  Data call({
    ScreenType? screenType,
    int? year,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfData.copyWith.fieldName(...)`
class _$DataCWProxyImpl implements _$DataCWProxy {
  const _$DataCWProxyImpl(this._value);

  final Data _value;

  @override
  Data screenType(ScreenType screenType) => this(screenType: screenType);

  @override
  Data year(int year) => this(year: year);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Data(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Data(...).copyWith(id: 12, name: "My name")
  /// ````
  Data call({
    Object? screenType = const $CopyWithPlaceholder(),
    Object? year = const $CopyWithPlaceholder(),
  }) {
    return Data(
      screenType:
          screenType == const $CopyWithPlaceholder() || screenType == null
              ? _value.screenType
              // ignore: cast_nullable_to_non_nullable
              : screenType as ScreenType,
      year: year == const $CopyWithPlaceholder() || year == null
          ? _value.year
          // ignore: cast_nullable_to_non_nullable
          : year as int,
    );
  }
}

extension $DataCopyWith on Data {
  /// Returns a callable class that can be used as follows: `instanceOfData.copyWith(...)` or like so:`instanceOfData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DataCWProxy get copyWith => _$DataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      screenType: $enumDecode(_$ScreenTypeEnumMap, json['screenType']),
      year: json['year'] as int,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'screenType': _$ScreenTypeEnumMap[instance.screenType]!,
      'year': instance.year,
    };

const _$ScreenTypeEnumMap = {
  ScreenType.trackPeriod: 'track_period',
  ScreenType.pregnant: 'pregnant',
};

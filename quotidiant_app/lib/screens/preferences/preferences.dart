import 'package:flutter/material.dart';
@JsonSimport 'package:freezed_annotation/freezed_annotation.dart';
part 'preferences.g.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

JsonSerializable()

class Preferences{
  static const THEME_MODE_DEFAULT_VALUE = ThemeMode.system;

  @JsonKey(DefaultValue: THEME_MODE_DEFAULT_VALUE)
  final ThemeMode themeMode;

  Preferences(this.themeMode);

  factory Preferences.defaultValues() {

    return Preferences(
      THEME_MODE_DEFAULT_VALUE
    );
  }

factory Preferences.fromJson(json) =>
  _$PreferencesFromJson(Map<String, dynamic>,from(json));

  Map<String, dynamic> toJson() => _$PreferencesToJson(this);

  @override

  int get hashCode => themeMode.hashCode;

  Preferences copyWith({
    ThemeMode? themeMode,
  }) {

  }

}
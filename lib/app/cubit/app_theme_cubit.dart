import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:spendly/core/json.dart';

@singleton
class AppThemeCubit extends HydratedCubit<ThemeMode> {
  AppThemeCubit() : super(ThemeMode.system);

  void updateTheme(ThemeMode theme) {
    if (state == theme) return;
    emit(theme);
  }

  @override
  ThemeMode? fromJson(Json json) {
    return json['theme'] != null
        ? ThemeMode.values[json['theme'] as int]
        : null;
  }

  @override
  Json? toJson(ThemeMode state) {
    return {'theme': state.index};
  }
}

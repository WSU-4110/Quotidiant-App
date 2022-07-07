import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotidiant_app/models/preferences.dart';
import 'package:quotidiant_app/services/preferences_service.dart';
import 'package:quotidiant_app/models/preferences.dart';
import 'package:quotidiant_app/services/preferences_service.dart';

class PreferencesCubit extends Cubit<Preferences> {
  final PreferencesService _service;

  PreferencesCubit(
    this._service,
    Preferences initalState,
  ) : super(initalState);

  Future<void> changePreferences(Preferences preferences) async {
    await _service.set(preferences);
    emit(preferences);
  }

  Future<void> deleteAllPreferences() async {
    await _service.clear();
    emit(Preferences.defaultValues());
  }
}

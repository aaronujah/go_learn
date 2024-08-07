import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_learn/pages/profile/settings/bloc/settings_events.dart';
import 'package:go_learn/pages/profile/settings/bloc/settings_state.dart';

class SettingsBlocs extends Bloc<SettingsEvents, SettingsStates> {
  SettingsBlocs() : super(const SettingsStates()) {
    on<TriggerSettings>(_triggerSettings);
  }
  _triggerSettings(SettingsEvents event, Emitter<SettingsStates> emit) {
    emit(const SettingsStates());
  }
}

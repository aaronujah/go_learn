import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_learn/app_events.dart';
import 'package:go_learn/app_states.dart';

class AppBlocs extends Bloc<AppEvents, AppStates> {
  AppBlocs() : super(InitStates()) {
    on<Increment>((event, emit) {
      emit(AppStates(counter: state.counter + 1));
    });
  }
}
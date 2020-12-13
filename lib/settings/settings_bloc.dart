import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsInitial());

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    if(event is FontSize){
      yield NewSettingsState.fromOldGettingState(state, sliderFontSize: event.payload);
    }
    else if(event is Bold){
      yield NewSettingsState.fromOldGettingState(state, isBold: event.payload);
    }
    else if(event is Italic){
      yield NewSettingsState.fromOldGettingState(state, isItalic: event.payload);
    }
  }
}

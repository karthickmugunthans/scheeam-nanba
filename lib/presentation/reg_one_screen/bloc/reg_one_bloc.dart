import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:karthick_mugunthan_s_s_application3/presentation/reg_one_screen/models/reg_one_model.dart';
part 'reg_one_event.dart';
part 'reg_one_state.dart';

/// A bloc that manages the state of a RegOne according to the event that is dispatched to it.
class RegOneBloc extends Bloc<RegOneEvent, RegOneState> {
  RegOneBloc(RegOneState initialState) : super(initialState) {
    on<RegOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegOneInitialEvent event,
    Emitter<RegOneState> emit,
  ) async {}
}

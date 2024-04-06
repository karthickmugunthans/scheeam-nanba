import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:karthick_mugunthan_s_s_application3/presentation/reg_container_screen/models/reg_container_model.dart';
part 'reg_container_event.dart';
part 'reg_container_state.dart';

/// A bloc that manages the state of a RegContainer according to the event that is dispatched to it.
class RegContainerBloc extends Bloc<RegContainerEvent, RegContainerState> {
  RegContainerBloc(RegContainerState initialState) : super(initialState) {
    on<RegContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegContainerInitialEvent event,
    Emitter<RegContainerState> emit,
  ) async {}
}

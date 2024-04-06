import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/thirteen_item_model.dart';
import 'package:karthick_mugunthan_s_s_application3/presentation/reg_page/models/reg_model.dart';
part 'reg_event.dart';
part 'reg_state.dart';

/// A bloc that manages the state of a Reg according to the event that is dispatched to it.
class RegBloc extends Bloc<RegEvent, RegState> {
  RegBloc(RegState initialState) : super(initialState) {
    on<RegInitialEvent>(_onInitialize);
  }

  List<ThirteenItemModel> fillThirteenItemList() {
    return List.generate(1, (index) => ThirteenItemModel());
  }

  _onInitialize(
    RegInitialEvent event,
    Emitter<RegState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        regModelObj: state.regModelObj?.copyWith(
      thirteenItemList: fillThirteenItemList(),
    )));
  }
}

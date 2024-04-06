import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:karthick_mugunthan_s_s_application3/presentation/frame_one_screen/models/frame_one_model.dart';
part 'frame_one_event.dart';
part 'frame_one_state.dart';

/// A bloc that manages the state of a FrameOne according to the event that is dispatched to it.
class FrameOneBloc extends Bloc<FrameOneEvent, FrameOneState> {
  FrameOneBloc(FrameOneState initialState) : super(initialState) {
    on<FrameOneInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<FrameOneState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _onInitialize(
    FrameOneInitialEvent event,
    Emitter<FrameOneState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
      isShowPassword: true,
    ));
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.regContainerScreen,
      );
    });
  }
}

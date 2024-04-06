// ignore_for_file: must_be_immutable

part of 'frame_one_bloc.dart';

/// Represents the state of FrameOne in the application.
class FrameOneState extends Equatable {
  FrameOneState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.frameOneModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  FrameOneModel? frameOneModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        frameOneModelObj,
      ];

  FrameOneState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    FrameOneModel? frameOneModelObj,
  }) {
    return FrameOneState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      frameOneModelObj: frameOneModelObj ?? this.frameOneModelObj,
    );
  }
}

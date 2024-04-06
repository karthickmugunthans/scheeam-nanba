// ignore_for_file: must_be_immutable

part of 'reg_bloc.dart';

/// Represents the state of Reg in the application.
class RegState extends Equatable {
  RegState({
    this.sliderIndex = 0,
    this.regModelObj,
  });

  RegModel? regModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        regModelObj,
      ];

  RegState copyWith({
    int? sliderIndex,
    RegModel? regModelObj,
  }) {
    return RegState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      regModelObj: regModelObj ?? this.regModelObj,
    );
  }
}

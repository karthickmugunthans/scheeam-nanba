// ignore_for_file: must_be_immutable

part of 'reg_container_bloc.dart';

/// Represents the state of RegContainer in the application.
class RegContainerState extends Equatable {
  RegContainerState({this.regContainerModelObj});

  RegContainerModel? regContainerModelObj;

  @override
  List<Object?> get props => [
        regContainerModelObj,
      ];

  RegContainerState copyWith({RegContainerModel? regContainerModelObj}) {
    return RegContainerState(
      regContainerModelObj: regContainerModelObj ?? this.regContainerModelObj,
    );
  }
}

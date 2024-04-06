// ignore_for_file: must_be_immutable

part of 'reg_one_bloc.dart';

/// Represents the state of RegOne in the application.
class RegOneState extends Equatable {
  RegOneState({this.regOneModelObj});

  RegOneModel? regOneModelObj;

  @override
  List<Object?> get props => [
        regOneModelObj,
      ];

  RegOneState copyWith({RegOneModel? regOneModelObj}) {
    return RegOneState(
      regOneModelObj: regOneModelObj ?? this.regOneModelObj,
    );
  }
}

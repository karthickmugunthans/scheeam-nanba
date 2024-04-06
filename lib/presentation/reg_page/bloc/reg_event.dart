// ignore_for_file: must_be_immutable

part of 'reg_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Reg widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Reg widget is first created.
class RegInitialEvent extends RegEvent {
  @override
  List<Object?> get props => [];
}

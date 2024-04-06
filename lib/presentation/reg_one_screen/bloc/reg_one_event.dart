// ignore_for_file: must_be_immutable

part of 'reg_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RegOne widget is first created.
class RegOneInitialEvent extends RegOneEvent {
  @override
  List<Object?> get props => [];
}

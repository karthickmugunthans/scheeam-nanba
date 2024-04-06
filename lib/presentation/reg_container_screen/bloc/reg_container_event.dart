// ignore_for_file: must_be_immutable

part of 'reg_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RegContainer widget is first created.
class RegContainerInitialEvent extends RegContainerEvent {
  @override
  List<Object?> get props => [];
}

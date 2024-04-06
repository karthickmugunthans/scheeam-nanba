// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'thirteen_item_model.dart';

/// This class defines the variables used in the [reg_page],
/// and is typically used to hold data that is passed between different parts of the application.
class RegModel extends Equatable {
  RegModel({this.thirteenItemList = const []}) {}

  List<ThirteenItemModel> thirteenItemList;

  RegModel copyWith({List<ThirteenItemModel>? thirteenItemList}) {
    return RegModel(
      thirteenItemList: thirteenItemList ?? this.thirteenItemList,
    );
  }

  @override
  List<Object?> get props => [thirteenItemList];
}

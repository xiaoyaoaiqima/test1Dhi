// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:test1/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [search_result_no_data_found_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultNoDataFoundModel extends Equatable {SearchResultNoDataFoundModel({this.dropdownItemList = const []}) {  }

List<SelectionPopupModel> dropdownItemList;

SearchResultNoDataFoundModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return SearchResultNoDataFoundModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }

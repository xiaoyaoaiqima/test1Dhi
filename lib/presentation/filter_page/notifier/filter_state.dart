// ignore_for_file: must_be_immutable

part of 'filter_notifier.dart';

/// Represents the state of Filter in the application.
class FilterState extends Equatable {
  FilterState({this.filterModelObj});

  FilterModel? filterModelObj;

  @override
  List<Object?> get props => [
        filterModelObj,
      ];

  FilterState copyWith({FilterModel? filterModelObj}) {
    return FilterState(
      filterModelObj: filterModelObj ?? this.filterModelObj,
    );
  }
}

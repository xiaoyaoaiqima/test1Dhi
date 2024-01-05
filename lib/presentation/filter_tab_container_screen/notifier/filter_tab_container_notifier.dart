import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:test1/presentation/filter_tab_container_screen/models/filter_tab_container_model.dart';
part 'filter_tab_container_state.dart';

final filterTabContainerNotifier =
    StateNotifierProvider<FilterTabContainerNotifier, FilterTabContainerState>(
  (ref) => FilterTabContainerNotifier(FilterTabContainerState(
    priceController: TextEditingController(),
    priceController1: TextEditingController(),
    filterTabContainerModelObj: FilterTabContainerModel(),
  )),
);

/// A notifier that manages the state of a FilterTabContainer according to the event that is dispatched to it.
class FilterTabContainerNotifier
    extends StateNotifier<FilterTabContainerState> {
  FilterTabContainerNotifier(FilterTabContainerState state) : super(state) {}
}

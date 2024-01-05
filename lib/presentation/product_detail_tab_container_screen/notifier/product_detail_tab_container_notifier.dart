import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/widget_item_model.dart';import 'package:test1/presentation/product_detail_tab_container_screen/models/product_detail_tab_container_model.dart';part 'product_detail_tab_container_state.dart';final productDetailTabContainerNotifier = StateNotifierProvider<ProductDetailTabContainerNotifier, ProductDetailTabContainerState>((ref) => ProductDetailTabContainerNotifier(ProductDetailTabContainerState(sliderIndex: 0, productDetailTabContainerModelObj: ProductDetailTabContainerModel(widgetItemList: List.generate(1, (index) => WidgetItemModel())))));
/// A notifier that manages the state of a ProductDetailTabContainer according to the event that is dispatched to it.
class ProductDetailTabContainerNotifier extends StateNotifier<ProductDetailTabContainerState> {ProductDetailTabContainerNotifier(ProductDetailTabContainerState state) : super(state);

 }

import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/superflashsale_item_model.dart';import 'package:test1/presentation/super_flash_sale_screen/models/super_flash_sale_model.dart';part 'super_flash_sale_state.dart';final superFlashSaleNotifier = StateNotifierProvider<SuperFlashSaleNotifier, SuperFlashSaleState>((ref) => SuperFlashSaleNotifier(SuperFlashSaleState(superFlashSaleModelObj: SuperFlashSaleModel(superflashsaleItemList: [SuperflashsaleItemModel(image: ImageConstant.imgPromotionImage, offer: "Super Flash Sale\n50% Off", clock: "08", text: ":", minutes: "34", text1: ":", secounds: "52"), SuperflashsaleItemModel(image: ImageConstant.imgProductImage3)]))));
/// A notifier that manages the state of a SuperFlashSale according to the event that is dispatched to it.
class SuperFlashSaleNotifier extends StateNotifier<SuperFlashSaleState> {SuperFlashSaleNotifier(SuperFlashSaleState state) : super(state);

 }

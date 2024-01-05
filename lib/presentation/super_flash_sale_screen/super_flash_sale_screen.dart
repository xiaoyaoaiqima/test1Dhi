import '../super_flash_sale_screen/widgets/superflashsale_item_widget.dart';import 'models/superflashsale_item_model.dart';import 'notifier/super_flash_sale_notifier.dart';import 'package:flutter/material.dart';import 'package:test1/core/app_export.dart';import 'package:test1/widgets/app_bar/appbar_leading_image.dart';import 'package:test1/widgets/app_bar/appbar_subtitle.dart';import 'package:test1/widgets/app_bar/appbar_trailing_image.dart';import 'package:test1/widgets/app_bar/custom_app_bar.dart';class SuperFlashSaleScreen extends ConsumerStatefulWidget {const SuperFlashSaleScreen({Key? key}) : super(key: key);

@override SuperFlashSaleScreenState createState() =>  SuperFlashSaleScreenState();

 }
class SuperFlashSaleScreenState extends ConsumerState<SuperFlashSaleScreen> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(left: 16.h, top: 26.v, right: 16.h), child: Consumer(builder: (context, ref, _) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: ref.watch(superFlashSaleNotifier).superFlashSaleModelObj?.superflashsaleItemList.length ?? 0, itemBuilder: (context, index) {SuperflashsaleItemModel model = ref.watch(superFlashSaleNotifier).superFlashSaleModelObj?.superflashsaleItemList[index] ?? SuperflashsaleItemModel(); return SuperflashsaleItemWidget(model);});})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "msg_super_flash_sale".tr, margin: EdgeInsets.only(left: 12.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgNavExplore, margin: EdgeInsets.fromLTRB(16.h, 14.v, 16.h, 17.v), onTap: () {onTapSearchIcon(context);})]); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the searchScreen when the action is triggered.
onTapSearchIcon(BuildContext context) { NavigatorService.pushNamed(AppRoutes.searchScreen, ); } 
 }

import '../review_product_screen/widgets/reviewproduct_item_widget.dart';import 'models/reviewproduct_item_model.dart';import 'notifier/review_product_notifier.dart';import 'package:flutter/material.dart';import 'package:test1/core/app_export.dart';import 'package:test1/widgets/app_bar/appbar_leading_image.dart';import 'package:test1/widgets/app_bar/appbar_subtitle.dart';import 'package:test1/widgets/app_bar/custom_app_bar.dart';import 'package:test1/widgets/custom_elevated_button.dart';class ReviewProductScreen extends ConsumerStatefulWidget {const ReviewProductScreen({Key? key}) : super(key: key);

@override ReviewProductScreenState createState() =>  ReviewProductScreenState();

 }
class ReviewProductScreenState extends ConsumerState<ReviewProductScreen> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 9.v), child: Column(children: [SizedBox(height: 18.v), _buildReviewProduct(context)])), bottomNavigationBar: _buildWriteReview(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 43.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 19.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "lbl_5_review2".tr, margin: EdgeInsets.only(left: 12.h))); } 
/// Section Widget
Widget _buildReviewProduct(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 19.h, right: 23.h), child: Consumer(builder: (context, ref, _) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 32.v);}, itemCount: ref.watch(reviewProductNotifier).reviewProductModelObj?.reviewproductItemList.length ?? 0, itemBuilder: (context, index) {ReviewproductItemModel model = ref.watch(reviewProductNotifier).reviewProductModelObj?.reviewproductItemList[index] ?? ReviewproductItemModel(); return ReviewproductItemWidget(model);});}))); } 
/// Section Widget
Widget _buildWriteReview(BuildContext context) { return CustomElevatedButton(text: "lbl_write_review".tr, margin: EdgeInsets.only(left: 19.h, right: 13.h, bottom: 58.v), onPressed: () {onTapWriteReview(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the writeReviewFillScreen when the action is triggered.
onTapWriteReview(BuildContext context) { NavigatorService.pushNamed(AppRoutes.writeReviewFillScreen, ); } 
 }

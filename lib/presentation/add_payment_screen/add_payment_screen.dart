import 'notifier/add_payment_notifier.dart';import 'package:flutter/material.dart';import 'package:test1/core/app_export.dart';import 'package:test1/widgets/app_bar/appbar_leading_image.dart';import 'package:test1/widgets/app_bar/appbar_subtitle.dart';import 'package:test1/widgets/app_bar/custom_app_bar.dart';class AddPaymentScreen extends ConsumerStatefulWidget {const AddPaymentScreen({Key? key}) : super(key: key);

@override AddPaymentScreenState createState() =>  AddPaymentScreenState();

 }
class AddPaymentScreenState extends ConsumerState<AddPaymentScreen> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 10.v), child: Column(children: [_buildPaymentOption(context, paypalIcon: ImageConstant.imgCreditCardIcon, paypal: "msg_credit_card_or_debit".tr, onTapPaymentOption: () {onTapPaymentOption(context);}), _buildPaymentOption(context, paypalIcon: ImageConstant.imgPaypalIcon, paypal: "lbl_paypal".tr), SizedBox(height: 5.v), _buildPaymentOption(context, paypalIcon: ImageConstant.imgBankIcon, paypal: "lbl_bank_transfer".tr)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "lbl_payment".tr, margin: EdgeInsets.only(left: 12.h))); } 
/// Common widget
Widget _buildPaymentOption(BuildContext context, {required String paypalIcon, required String paypal, Function? onTapPaymentOption, }) { return GestureDetector(onTap: () {onTapPaymentOption!.call();}, child: Container(width: double.maxFinite, padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillOnPrimaryContainer, child: Row(children: [CustomImageView(imagePath: paypalIcon, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h, top: 4.v), child: Text(paypal, style: theme.textTheme.labelLarge!.copyWith(color: theme.colorScheme.onPrimary.withOpacity(1))))]))); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the creditCardAndDebitScreen when the action is triggered.
onTapPaymentOption(BuildContext context) { NavigatorService.pushNamed(AppRoutes.creditCardAndDebitScreen, ); } 
 }

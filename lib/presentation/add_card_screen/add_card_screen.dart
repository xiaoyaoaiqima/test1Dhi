import 'notifier/add_card_notifier.dart';import 'package:flutter/material.dart';import 'package:test1/core/app_export.dart';import 'package:test1/core/utils/validation_functions.dart';import 'package:test1/widgets/app_bar/appbar_leading_image.dart';import 'package:test1/widgets/app_bar/appbar_subtitle.dart';import 'package:test1/widgets/app_bar/custom_app_bar.dart';import 'package:test1/widgets/custom_elevated_button.dart';import 'package:test1/widgets/custom_text_form_field.dart';class AddCardScreen extends ConsumerStatefulWidget {const AddCardScreen({Key? key}) : super(key: key);

@override AddCardScreenState createState() =>  AddCardScreenState();

 }

// ignore_for_file: must_be_immutable
class AddCardScreenState extends ConsumerState<AddCardScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 27.v), child: Column(children: [_buildCardNumber(context), SizedBox(height: 24.v), _buildExpirationDate(context), SizedBox(height: 29.v), _buildSecurityCode(context), SizedBox(height: 23.v), _buildCardHolder(context), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildAddCard(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "lbl_add_card".tr, margin: EdgeInsets.only(left: 12.h))); } 
/// Section Widget
Widget _buildCardNumber(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_card_number".tr, style: theme.textTheme.titleSmall), SizedBox(height: 12.v), Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(addCardNotifier).cardNumberController, hintText: "msg_enter_card_number".tr, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;});})]); } 
/// Section Widget
Widget _buildExpirationDate(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_expiration_date".tr, style: theme.textTheme.titleSmall), SizedBox(height: 11.v), Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(addCardNotifier).expirationDateController, hintText: "lbl_expiration_date".tr);})]); } 
/// Section Widget
Widget _buildSecurityCode(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_security_code".tr, style: theme.textTheme.titleSmall), SizedBox(height: 11.v), Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(addCardNotifier).securityCodeController, hintText: "lbl_security_code".tr);})]); } 
/// Section Widget
Widget _buildCardHolder(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_card_holder2".tr, style: theme.textTheme.titleSmall), SizedBox(height: 12.v), Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(addCardNotifier).cardNumberController1, hintText: "msg_enter_card_number".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;});})]); } 
/// Section Widget
Widget _buildAddCard(BuildContext context) { return CustomElevatedButton(text: "lbl_add_card".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v), onPressed: () {onTapAddCard(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the creditCardAndDebitScreen when the action is triggered.
onTapAddCard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.creditCardAndDebitScreen, ); } 
 }

import '../credit_card_and_debit_screen/widgets/cards_item_widget.dart';import 'models/cards_item_model.dart';import 'notifier/credit_card_and_debit_notifier.dart';import 'package:flutter/material.dart';import 'package:test1/core/app_export.dart';import 'package:test1/widgets/app_bar/appbar_leading_image.dart';import 'package:test1/widgets/app_bar/appbar_subtitle.dart';import 'package:test1/widgets/app_bar/custom_app_bar.dart';import 'package:test1/widgets/custom_elevated_button.dart';class CreditCardAndDebitScreen extends ConsumerStatefulWidget {const CreditCardAndDebitScreen({Key? key}) : super(key: key);

@override CreditCardAndDebitScreenState createState() =>  CreditCardAndDebitScreenState();

 }
class CreditCardAndDebitScreenState extends ConsumerState<CreditCardAndDebitScreen> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 9.v), child: Column(children: [SizedBox(height: 8.v), _buildCards(context), Spacer()])), bottomNavigationBar: _buildAddCard(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "msg_credit_card_and".tr, margin: EdgeInsets.only(left: 12.h))); } 
/// Section Widget
Widget _buildCards(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Consumer(builder: (context, ref, _) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 14.v);}, itemCount: ref.watch(creditCardAndDebitNotifier).creditCardAndDebitModelObj?.cardsItemList.length ?? 0, itemBuilder: (context, index) {CardsItemModel model = ref.watch(creditCardAndDebitNotifier).creditCardAndDebitModelObj?.cardsItemList[index] ?? CardsItemModel(); return CardsItemWidget(model, onTapCreditCardItem: () {onTapCreditCardItem(context);});});})); } 
/// Section Widget
Widget _buildAddCard(BuildContext context) { return CustomElevatedButton(text: "lbl_add_card".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v), onPressed: () {onTapAddCard(context);}); } 
/// Navigates to the lailyfaFebrinaCardScreen when the action is triggered.
onTapCreditCardItem(BuildContext context) { NavigatorService.pushNamed(AppRoutes.lailyfaFebrinaCardScreen); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the addCardScreen when the action is triggered.
onTapAddCard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addCardScreen, ); } 
 }

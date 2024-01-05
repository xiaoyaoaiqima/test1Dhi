import 'notifier/app_navigation_notifier.dart';
import 'package:flutter/material.dart';
import 'package:test1/core/app_export.dart';

class AppNavigationScreen extends ConsumerStatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
}

class AppNavigationScreenState extends ConsumerState<AppNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Register".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dashboard - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dashboardContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Super Flash Sale".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.superFlashSaleScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Favorite Product".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.favoriteProductScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Product Detail - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productDetailTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Review Product".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reviewProductScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Write Review Fill".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.writeReviewFillScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification Offer".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationOfferScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification Feed".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationFeedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification Activity".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationActivityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Result".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchResultScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Result No Data Found".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchResultNoDataFoundScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "List Category".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.listCategoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sort By".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sortByScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Filter - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.filterTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Ship To".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.shipToScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Method".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Choose Credit Or Debit Card".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chooseCreditOrDebitCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Success Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.successScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Change Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Order".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Order Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addAddressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Payment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addPaymentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Credit Card And Debit".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.creditCardAndDebitScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Lailyfa Febrina Card".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.lailyfaFebrinaCardScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}

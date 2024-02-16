import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';
import 'package:link_click/presentation/home_10_driver_page/home_10_driver_page.dart';
import 'package:link_click/widgets/custom_bottom_bar.dart';
import 'package:link_click/widgets/custom_icon_button.dart';

class Home15RiderScreen extends StatelessWidget {
  Home15RiderScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 14.h,
            top: 81.v,
            right: 14.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 78.h,
                  right: 88.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 29.v,
                ),
                decoration: AppDecoration.outlinePrimary3.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "200 SAR",
                      style: theme.textTheme.headlineMedium,
                    ),
                    SizedBox(height: 16.v),
                    Text(
                      "Available Balance",
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 4.v),
                  ],
                ),
              ),
              SizedBox(height: 40.v),
              _buildTransactionSection(context),
              SizedBox(height: 15.v),
              _buildSendSection(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactionSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 13.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Transactions",
            style: CustomTextStyles.titleMediumGray800,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 2.v,
            ),
            child: Text(
              "See All",
              style: CustomTextStyles.labelLargeCyan400,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSendSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 13.h),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineCyan4001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: CustomIconButton(
              height: 35.adaptSize,
              width: 35.adaptSize,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.fillRed,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowLeft,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Roaa",
                  style: CustomTextStyles.titleSmallOnErrorContainer,
                ),
                SizedBox(height: 1.v),
                Text(
                  "Today at 01:30 am",
                  style: CustomTextStyles.bodySmallPoppinsGray700,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              right: 5.h,
              bottom: 10.v,
            ),
            child: Text(
              "-20.00 SAR",
              style: CustomTextStyles.titleSmallOnErrorContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.home10DriverPage;
      case BottomBarEnum.Matches:
        return "/";
      case BottomBarEnum.Trips:
        return "/";
      case BottomBarEnum.Wallet:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.home10DriverPage:
        return Home10DriverPage();
      default:
        return DefaultWidget();
    }
  }
}

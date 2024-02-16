import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';
import 'package:link_click/presentation/home_10_driver_page/home_10_driver_page.dart';
import 'package:link_click/widgets/app_bar/appbar_title.dart';
import 'package:link_click/widgets/app_bar/custom_app_bar.dart';
import 'package:link_click/widgets/custom_bottom_bar.dart';

class Home8RiderScreen extends StatelessWidget {
  Home8RiderScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 4.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 47.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "11 Feb",
                            style: theme.textTheme.labelMedium,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 192.h),
                            child: Text(
                              "15 Feb",
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 34.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 13.h,
                              vertical: 7.v,
                            ),
                            decoration: AppDecoration.outlinePrimary.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder17,
                            ),
                            child: Text(
                              "S",
                              style: CustomTextStyles.labelLargeBlack900,
                            ),
                          ),
                          Container(
                            width: 34.adaptSize,
                            margin: EdgeInsets.only(left: 17.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 11.h,
                              vertical: 7.v,
                            ),
                            decoration: AppDecoration.outlinePrimary.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder17,
                            ),
                            child: Text(
                              "M",
                              style: CustomTextStyles.labelLargeBlack900,
                            ),
                          ),
                          Container(
                            width: 34.adaptSize,
                            margin: EdgeInsets.only(left: 22.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 13.h,
                              vertical: 7.v,
                            ),
                            decoration: AppDecoration.outlinePrimary.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder17,
                            ),
                            child: Text(
                              "T",
                              style: CustomTextStyles.labelLargeBlack900,
                            ),
                          ),
                          Container(
                            width: 34.adaptSize,
                            margin: EdgeInsets.only(left: 21.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.h,
                              vertical: 7.v,
                            ),
                            decoration: AppDecoration.outlinePrimary.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder17,
                            ),
                            child: Text(
                              "W",
                              style: CustomTextStyles.labelLargeBlack900,
                            ),
                          ),
                          Container(
                            width: 34.adaptSize,
                            margin: EdgeInsets.only(left: 21.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 13.h,
                              vertical: 7.v,
                            ),
                            decoration: AppDecoration.outlinePrimary1.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder17,
                            ),
                            child: Text(
                              "T",
                              style: CustomTextStyles.labelLargeBlack900,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 23.v),
              _buildConfirmedRow(context),
              SizedBox(height: 16.v),
              _buildBaseStack1(context),
              SizedBox(height: 58.v),
              _buildPendingRow(context),
              SizedBox(height: 10.v),
              _buildBaseStack2(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 79.v,
      title: AppbarTitle(
        text: "My Trips",
        margin: EdgeInsets.only(left: 33.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmedRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Confirmed",
              style: theme.textTheme.headlineSmall,
            ),
            Container(
              height: 15.v,
              width: 175.h,
              margin: EdgeInsets.only(
                top: 11.v,
                bottom: 10.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.lightBlue100,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBaseStack1(BuildContext context) {
    return SizedBox(
      height: 144.v,
      width: 335.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 144.v,
              width: 334.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(37.h),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgBase144x334,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 46.v,
              width: 334.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 98.v,
              width: 335.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.h),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgRectangle998x335,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(5.h, 101.v, 20.h, 1.v),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20.h,
                      ),
                      border: Border.all(
                        color: appTheme.black900,
                        width: 1.h,
                        strokeAlign: strokeAlignOutside,
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgEllipse340x40,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 31.v,
                    width: 94.h,
                    margin: EdgeInsets.only(
                      left: 4.h,
                      top: 4.v,
                      bottom: 5.v,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Mazda Mx-5",
                            style:
                                CustomTextStyles.titleMediumPublicSansBlack900,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Roaa",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 41.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: appTheme.black900,
                      indent: 5.h,
                      endIndent: 5.h,
                    ),
                  ),
                  Container(
                    width: 53.h,
                    margin: EdgeInsets.only(
                      left: 19.h,
                      top: 2.v,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "11 -15 Feb 24\n",
                            style: CustomTextStyles.bodySmallff000000,
                          ),
                          TextSpan(
                            text: "13:00",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPendingRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pending",
              style: theme.textTheme.headlineSmall,
            ),
            Container(
              height: 15.v,
              width: 209.h,
              margin: EdgeInsets.only(
                top: 8.v,
                bottom: 13.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.lightBlue100,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBaseStack2(BuildContext context) {
    return SizedBox(
      height: 144.v,
      width: 337.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 144.v,
              width: 334.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(37.h),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgBase144x334,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 98.v,
              width: 335.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.h),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgRectangle93,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 46.v,
              width: 334.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 46.v,
                      width: 334.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5.h, 4.v, 12.h, 1.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse4Black900,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(
                              20.0.adaptSize,
                            ),
                          ),
                          Container(
                            height: 29.v,
                            width: 109.h,
                            margin: EdgeInsets.only(
                              left: 4.h,
                              top: 4.v,
                              bottom: 6.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    "Toyota Corolla",
                                    style: CustomTextStyles
                                        .titleMediumPublicSansBlack900,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "Saeed",
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            height: 40.v,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                              color: appTheme.black900,
                              indent: 4.h,
                              endIndent: 5.h,
                            ),
                          ),
                          Container(
                            width: 57.h,
                            margin: EdgeInsets.only(left: 23.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "11 & 13 Feb 24\n",
                                    style: CustomTextStyles.bodySmallff000000,
                                  ),
                                  TextSpan(
                                    text: "6:30",
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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

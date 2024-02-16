import '../home_10_driver_page/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';
import 'package:link_click/widgets/app_bar/appbar_title.dart';
import 'package:link_click/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class Home10DriverPage extends StatelessWidget {
  const Home10DriverPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 6.v),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 56.h,
                    right: 52.h,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 1.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "11 Feb",
                              style: theme.textTheme.labelMedium,
                            ),
                            Text(
                              "15 Feb",
                              style: theme.textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                SizedBox(height: 29.v),
                _buildCard7(context),
                SizedBox(height: 18.v),
                _buildUserProfile(context),
                SizedBox(height: 500.v),
                Container(
                  margin: EdgeInsets.only(left: 1.h),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgHome101Driver,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInboxStack(context),
                      SizedBox(height: 1.v),
                      Container(
                        height: 272.v,
                        width: 146.h,
                        margin: EdgeInsets.only(left: 97.h),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVector1,
                              height: 268.v,
                              width: 131.h,
                              alignment: Alignment.centerLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgLinkedinRedA400,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.bottomRight,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 314.v),
                      _buildFiftyFour(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 68.v,
      title: AppbarTitle(
        text: "My Trips",
        margin: EdgeInsets.only(left: 29.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildCard7(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 35.h,
        right: 30.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "Thursday",
              style: theme.textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              right: 4.h,
            ),
            child: Text(
              "1:30 pm",
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 17.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return UserprofileItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildInboxStack(BuildContext context) {
    return Container(
      height: 82.v,
      width: 358.h,
      margin: EdgeInsets.only(left: 1.h),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgInbox,
            height: 16.v,
            width: 12.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 114.h),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 74.v,
              width: 358.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTopStatusBar,
                    height: 52.v,
                    width: 358.h,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowLeftGray800,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              "Back",
                              style: CustomTextStyles.bodyLargePoppinsGray800,
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
  Widget _buildFiftyFour(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.customBorderTL24,
      ),
      child: Column(
        children: [
          Text(
            "Mohammed address",
            textAlign: TextAlign.center,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 17.v),
          Divider(),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              right: 28.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLinkedinRedA400,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 3.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "An Naseem, Jeddah 23234",
                    style: CustomTextStyles.bodySmallPoppinsGray40001,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text(
                    "10.7km",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
        ],
      ),
    );
  }
}

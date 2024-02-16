import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';

class Home9RiderScreen extends StatelessWidget {
  const Home9RiderScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgHome9Rider,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 104.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: AppDecoration.outlineOnPrimaryContainer1,
                  child: Text(
                    "12:30",
                    style: CustomTextStyles.robotoOnPrimary,
                  ),
                ),
                SizedBox(height: 2.v),
                Container(
                  decoration: AppDecoration.outlineOnPrimaryContainer1,
                  child: Text(
                    "MONDAY, FEBRUARY 12",
                    style: CustomTextStyles.bodyLargeRobotoOnPrimary,
                  ),
                ),
                Spacer(
                  flex: 36,
                ),
                _buildSystemNotificationLockScreen(context),
                Spacer(
                  flex: 63,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSystemNotificationLockScreen(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        children: [
          SizedBox(height: 12.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Row(
                children: [
                  Container(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgThumbsUp,
                      height: 13.v,
                      width: 11.h,
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "Link Click",
                      style: CustomTextStyles.bodySmallRobotoDeeppurpleA200,
                    ),
                  ),
                  Container(
                    height: 3.adaptSize,
                    width: 3.adaptSize,
                    margin: EdgeInsets.only(
                      left: 6.h,
                      top: 6.v,
                      bottom: 6.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.gray900,
                      borderRadius: BorderRadius.circular(
                        1.h,
                      ),
                      border: Border.all(
                        color: appTheme.gray900,
                        width: 1.h,
                        strokeAlign: strokeAlignCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "now",
                      style: CustomTextStyles.bodySmallRobotoGray900,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 4.v,
                    width: 7.h,
                    margin: EdgeInsets.only(
                      left: 6.h,
                      top: 5.v,
                      bottom: 6.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Confirm your Ride",
                        style: CustomTextStyles.bodyMediumRobotoGray900,
                      ),
                      SizedBox(height: 3.v),
                      SizedBox(
                        width: 221.h,
                        child: Text(
                          "Open the App to confirm your ride with Rooa",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumRobotoGray70001
                              .copyWith(
                            height: 1.54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 36.v,
                  width: 44.h,
                  margin: EdgeInsets.only(
                    left: 42.h,
                    top: 12.v,
                    bottom: 12.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEllipse92,
                    height: 36.v,
                    width: 39.h,
                    radius: BorderRadius.circular(
                      19.h,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillGray200,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "Decline".toUpperCase(),
                    style: CustomTextStyles.bodyLargeRobotoDeeppurpleA200,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "confirm".toUpperCase(),
                    style: CustomTextStyles.bodyLargeRobotoDeeppurpleA200,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

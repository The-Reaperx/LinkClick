import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillLightBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60.adaptSize,
            width: 60.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 3.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse89,
                  height: 58.adaptSize,
                  width: 58.adaptSize,
                  radius: BorderRadius.circular(
                    29.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 60.adaptSize,
                    width: 60.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.cyan400,
                      borderRadius: BorderRadius.circular(
                        30.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 7.h,
                bottom: 9.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 27.h),
                    child: Text(
                      "Mohammed",
                      style: CustomTextStyles.titleSmallPrimary,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLinkedin,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "Faculty of Science",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "R2ZR+M23, King Abdul Aziz University, Jeddah 21589",
                      style: CustomTextStyles.bodySmallPoppinsGray500,
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
}

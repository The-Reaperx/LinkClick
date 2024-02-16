import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';
import 'package:link_click/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class Home13RiderBottomsheet extends StatelessWidget {
  const Home13RiderBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 359.h,
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 36.v),
          Text(
            "Trip Details",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 13.v),
          SizedBox(
            height: 169.v,
            width: 335.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: SizedBox(
                      height: 74.v,
                      child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                        color: theme.colorScheme.primary,
                        indent: 45.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLinkedinPrimary,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 26.v),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 50.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLinkedinRedA400,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(
                            top: 74.v,
                            bottom: 20.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 74.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mohammad",
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 3.v),
                              Text(
                                "An Naseem, Jeddah 23234",
                                style:
                                    CustomTextStyles.bodySmallPoppinsGray40001,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(bottom: 98.v),
                          child: Text(
                            "10.7km",
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: SizedBox(
                      height: 69.v,
                      child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                        color: theme.colorScheme.primary,
                        endIndent: 40.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLinkedinRedA400,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(bottom: 16.v),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 30.h,
                      right: 170.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Anas Ibrahim",
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 4.v),
                        Text(
                          "Al Faisalyah, Jeddah 23236",
                          style: CustomTextStyles.bodySmallPoppinsGray40001,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 30.h,
                      top: 25.v,
                      right: 47.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Current location",
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 4.v),
                        Text(
                          "F6WR+M23, King Abdul Aziz University, Jeddah 21589",
                          style: CustomTextStyles.bodySmallPoppinsGray40001,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 22.v),
          CustomElevatedButton(
            height: 52.v,
            text: "Estimated Time of Arrival -  1:30",
            margin: EdgeInsets.only(
              left: 26.h,
              right: 16.h,
            ),
          ),
        ],
      ),
    );
  }
}

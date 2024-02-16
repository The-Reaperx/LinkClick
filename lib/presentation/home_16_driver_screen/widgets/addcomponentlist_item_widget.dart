import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';

// ignore: must_be_immutable
class AddcomponentlistItemWidget extends StatelessWidget {
  const AddcomponentlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineCyan4001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 35.adaptSize,
            width: 35.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 4.v),
            decoration: BoxDecoration(
              color: appTheme.lightBlue50,
              borderRadius: BorderRadius.circular(
                17.h,
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
                  "Mohammad",
                  style: CustomTextStyles.titleSmallOnErrorContainer,
                ),
                SizedBox(height: 1.v),
                Text(
                  "Paypal",
                  style: CustomTextStyles.bodySmallPoppinsGray700,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              right: 6.h,
              bottom: 10.v,
            ),
            child: Text(
              "20.00 SAR",
              style: CustomTextStyles.titleSmallOnErrorContainer,
            ),
          ),
        ],
      ),
    );
  }
}

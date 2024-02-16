import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';

// ignore: must_be_immutable
class SelectaddressItemWidget extends StatelessWidget {
  const SelectaddressItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgLinkedinGray700,
          height: 22.adaptSize,
          width: 22.adaptSize,
          margin: EdgeInsets.only(bottom: 16.v),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 4.h,
            top: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "University",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 1.v),
              Text(
                "F6WR+M23, King Abdul Aziz University, Jeddah 21589",
                style: CustomTextStyles.bodySmallPoppinsGray400018,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 19.v),
          child: Text(
            "2.7km",
            style: theme.textTheme.titleSmall,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';

// ignore: must_be_immutable
class CardetailsItemWidget extends StatelessWidget {
  const CardetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 11.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlinePrimary1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Model",
              style: theme.textTheme.titleSmall,
            ),
            Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Text(
                "2023",
                style: theme.textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

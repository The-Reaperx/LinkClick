import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';
import 'package:link_click/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class AppbarButton extends StatelessWidget {
  AppbarButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 60.v,
          width: 189.h,
          text: "Start Trip",
          buttonStyle: CustomButtonStyles.outlineBlack,
          buttonTextStyle:
              CustomTextStyles.titleMediumInterOnPrimaryContainer_1,
        ),
      ),
    );
  }
}

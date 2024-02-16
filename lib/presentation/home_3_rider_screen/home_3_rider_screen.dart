import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';

class Home3RiderScreen extends StatelessWidget {
  const Home3RiderScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 758.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMap757x356,
                height: 757.v,
                width: 356.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 39.h,
                    vertical: 171.v,
                  ),
                  decoration: AppDecoration.fillGray,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPlaceIndicate,
                        height: 198.adaptSize,
                        width: 198.adaptSize,
                      ),
                      SizedBox(height: 9.v),
                      SizedBox(
                        width: 279.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Matching",
                                style: theme.textTheme.displaySmall,
                              ),
                              TextSpan(
                                text: " \n",
                                style: CustomTextStyles.titleMediumffffffffBold,
                              ),
                              TextSpan(
                                text: "Fun Fact : You are saving the world",
                                style: CustomTextStyles.titleMediumffffffff,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 9.v),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

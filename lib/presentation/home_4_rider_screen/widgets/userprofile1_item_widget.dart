import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  const Userprofile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
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
            alignment: Alignment.bottomRight,
            child: Container(
              height: 29.v,
              width: 68.h,
              margin: EdgeInsets.only(
                right: 4.h,
                bottom: 44.v,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 21.v,
                      width: 68.h,
                      decoration: BoxDecoration(
                        color: appTheme.cyan400.withOpacity(0.58),
                        borderRadius: BorderRadius.circular(
                          10.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 53.h,
                      child: Text(
                        "20 SAR",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          height: 1.47,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                top: 101.v,
                right: 12.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v),
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
                      bottom: 6.v,
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
                    height: 42.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: appTheme.black900,
                      indent: 5.h,
                      endIndent: 6.h,
                    ),
                  ),
                  Container(
                    width: 61.h,
                    margin: EdgeInsets.only(
                      left: 19.h,
                      top: 3.v,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "11 Feb - 15 Feb\n",
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
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:link_click/core/app_export.dart';

class Home14DriverScreen extends StatelessWidget {
  Home14DriverScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 758.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 668.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage32668x360,
                        height: 668.v,
                        width: 360.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 55.h,
                            right: 16.h,
                            bottom: 6.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildMapSection(context),
                              SizedBox(height: 25.v),
                              Container(
                                height: 66.v,
                                width: 165.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 22.h,
                                  vertical: 3.v,
                                ),
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        " 0.5 km 1:00 PM",
                                        style: CustomTextStyles
                                            .titleMediumErrorContainer,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 3.v),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "6",
                                                style: CustomTextStyles
                                                    .headlineSmallff0d7e45Bold,
                                              ),
                                              TextSpan(
                                                text: " min",
                                                style: CustomTextStyles
                                                    .headlineSmallff0d7e45,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ],
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
              _buildTopBarSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMapSection(BuildContext context) {
    return SizedBox(
      height: 527.v,
      width: 222.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildTopBarSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.outlineBlack900,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 1.v),
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              color: appTheme.lightBlue50,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.cyan400,
                  width: 1.h,
                ),
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Container(
                height: 81.v,
                width: 327.h,
                decoration: AppDecoration.outlineCyan400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse89,
                      height: 58.adaptSize,
                      width: 58.adaptSize,
                      radius: BorderRadius.circular(
                        29.h,
                      ),
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 13.h),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 60.adaptSize,
                        width: 60.adaptSize,
                        margin: EdgeInsets.only(left: 12.h),
                        decoration: BoxDecoration(
                          color: appTheme.cyan400,
                          borderRadius: BorderRadius.circular(
                            30.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 79.h,
                          top: 6.v,
                          right: 14.h,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
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
                            Padding(
                              padding: EdgeInsets.only(right: 62.h),
                              child: Row(
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
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5.v),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 60.adaptSize,
                              width: 60.adaptSize,
                              margin: EdgeInsets.only(
                                top: 5.v,
                                bottom: 4.v,
                              ),
                              padding: EdgeInsets.all(1.h),
                              decoration: AppDecoration.outlineCyan.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder29,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgImage3156x56,
                                height: 56.adaptSize,
                                width: 56.adaptSize,
                                radius: BorderRadius.circular(
                                  28.h,
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgLinkedin,
                              height: 22.adaptSize,
                              width: 22.adaptSize,
                              margin: EdgeInsets.only(
                                top: 26.v,
                                bottom: 21.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.v),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text(
                                      "Anas Ibrahim",
                                      style: CustomTextStyles.titleSmallPrimary,
                                    ),
                                  ),
                                  SizedBox(height: 2.v),
                                  SizedBox(
                                    height: 33.v,
                                    width: 208.h,
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            "P2ZR+M24, King Abdul Aziz University, Jeddah 21589",
                                            style: CustomTextStyles
                                                .bodySmallPoppinsGray500,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Faculty of Computer",
                                            style: theme.textTheme.titleMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
      ),
    );
  }
}

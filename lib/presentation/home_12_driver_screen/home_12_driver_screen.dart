import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:link_click/core/app_export.dart';

class Home12DriverScreen extends StatelessWidget {
  Home12DriverScreen({Key? key})
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
                  width: 358.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage32,
                        height: 668.v,
                        width: 358.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 55.h,
                            right: 14.h,
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
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.outlineBlack900,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20.v),
            Container(
              margin: EdgeInsets.only(right: 1.h),
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60.adaptSize,
                    width: 60.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 4.v),
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
                        bottom: 10.v,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLinkedin,
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                                margin: EdgeInsets.only(bottom: 10.v),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Faculty of Science",
                                        style: theme.textTheme.titleMedium,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.h),
                                        child: Text(
                                          "R2ZR+M23, King Abdul Aziz University, Jeddah 21589",
                                          style: CustomTextStyles
                                              .bodySmallPoppinsGray500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

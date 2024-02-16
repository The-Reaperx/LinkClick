import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:link_click/core/app_export.dart';
import 'package:link_click/widgets/app_bar/appbar_button.dart';
import 'package:link_click/widgets/app_bar/appbar_circleimage.dart';
import 'package:link_click/widgets/app_bar/appbar_circleimage_one.dart';
import 'package:link_click/widgets/app_bar/custom_app_bar.dart';

class Home15DriverScreen extends StatelessWidget {
  Home15DriverScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 662.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage32658x360,
                    height: 658.v,
                    width: 360.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 66.v,
                      width: 165.h,
                      margin: EdgeInsets.only(left: 61.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 22.h,
                        vertical: 3.v,
                      ),
                      decoration: AppDecoration.fillOnPrimaryContainer,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              " 0.5 km 1:00 PM",
                              style: CustomTextStyles.titleMediumErrorContainer,
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
                  ),
                  _buildMap(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 100.v,
      centerTitle: true,
      title: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppbarCircleimageOne(
              imagePath: ImageConstant.imgImage3160x60,
              margin: EdgeInsets.only(top: 1.v),
            ),
            Container(
              height: 60.adaptSize,
              width: 60.adaptSize,
              margin: EdgeInsets.only(top: 1.v),
              decoration: BoxDecoration(
                color: appTheme.cyan400,
                borderRadius: BorderRadius.circular(
                  30.h,
                ),
              ),
            ),
            AppbarCircleimage(
              imagePath: ImageConstant.imgEllipse89,
              margin: EdgeInsets.only(
                top: 2.v,
                bottom: 1.v,
              ),
            ),
            AppbarButton(
              margin: EdgeInsets.only(
                left: 46.h,
                right: 9.h,
                bottom: 1.v,
              ),
            ),
          ],
        ),
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return Container(
      height: 552.v,
      width: 290.h,
      margin: EdgeInsets.only(top: 32.v),
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
}

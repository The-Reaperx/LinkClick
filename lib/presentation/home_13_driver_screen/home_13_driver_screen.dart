import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:link_click/core/app_export.dart';
import 'package:link_click/widgets/app_bar/appbar_button.dart';
import 'package:link_click/widgets/app_bar/appbar_circleimage.dart';
import 'package:link_click/widgets/app_bar/custom_app_bar.dart';

class Home13DriverScreen extends StatelessWidget {
  Home13DriverScreen({Key? key})
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
              height: 668.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage32,
                    height: 668.v,
                    width: 360.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 61.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildMapSection(context),
                          SizedBox(height: 12.v),
                          Container(
                            height: 66.v,
                            width: 165.h,
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
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 95.v,
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
                left: 39.h,
                right: 16.h,
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
  Widget _buildMapSection(BuildContext context) {
    return Container(
      height: 552.v,
      width: 295.h,
      margin: EdgeInsets.only(left: 4.h),
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

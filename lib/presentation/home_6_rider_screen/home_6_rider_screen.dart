import '../home_6_rider_screen/widgets/bookingsmenu_item_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:link_click/core/app_export.dart';
import 'package:link_click/widgets/app_bar/appbar_leading_image.dart';
import 'package:link_click/widgets/app_bar/custom_app_bar.dart';
import 'package:link_click/widgets/custom_search_view.dart';

class Home6RiderScreen extends StatelessWidget {
  Home6RiderScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildBookingFunctions(context),
              SizedBox(
                height: 660.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    _buildMap(context),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 41.h,
                          top: 27.v,
                          right: 19.h,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            _buildRoaa(context),
                            SizedBox(height: 60.v),
                            Container(
                              margin: EdgeInsets.only(
                                left: 153.h,
                                right: 45.h,
                              ),
                              decoration:
                                  AppDecoration.fillOnPrimaryContainer.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRectangle10,
                                    height: 107.v,
                                    width: 102.h,
                                    radius: BorderRadius.circular(
                                      10.h,
                                    ),
                                  ),
                                  SizedBox(height: 5.v),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 3.h,
                                      right: 6.h,
                                    ),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                "Huda",
                                                style: CustomTextStyles
                                                    .labelLargeInterBlack900,
                                              ),
                                            ),
                                            _buildFortyFive(
                                              context,
                                              ratingText: "4.5",
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 41.h,
                                          margin: EdgeInsets.only(left: 17.h),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "15 Feb 24\n",
                                                  style: CustomTextStyles
                                                      .bodySmallQuestrialff000000,
                                                ),
                                                TextSpan(
                                                  text: "16:00",
                                                  style: CustomTextStyles
                                                      .bodyLargeQuestrial,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 5.v),
                                ],
                              ),
                            ),
                            SizedBox(height: 7.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgLinkedinCyan400,
                              height: 18.v,
                              width: 13.h,
                              margin: EdgeInsets.only(right: 91.h),
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
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 32.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.fromLTRB(11.h, 2.v, 289.h, 2.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildBookingFunctions(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlack9002,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Search",
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTelevision,
                  height: 24.v,
                  width: 21.h,
                  margin: EdgeInsets.only(
                    left: 23.h,
                    top: 8.v,
                    bottom: 8.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Wrap(
            runSpacing: 40.12.v,
            spacing: 40.12.h,
            children:
                List<Widget>.generate(3, (index) => BookingsmenuItemWidget()),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return SizedBox(
      height: 660.v,
      width: double.maxFinite,
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
  Widget _buildRoaa(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 115.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle10107x102,
                      height: 107.v,
                      width: 102.h,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 29.v,
                          width: 32.h,
                          margin: EdgeInsets.only(bottom: 1.v),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  "Roaa ",
                                  style:
                                      CustomTextStyles.labelLargeInterBlack900,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 12.v),
                                child: _buildFortyFive(
                                  context,
                                  ratingText: "4.8",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 54.h,
                          margin: EdgeInsets.only(left: 10.h),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "11- 15 Feb 24\n",
                                  style: CustomTextStyles
                                      .bodySmallQuestrialff000000,
                                ),
                                TextSpan(
                                  text: "13:00",
                                  style: CustomTextStyles.bodyLargeQuestrial,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6.v),
                  ],
                ),
              ),
              SizedBox(height: 7.v),
              CustomImageView(
                imagePath: ImageConstant.imgLinkedinCyan400,
                height: 18.v,
                width: 13.h,
                margin: EdgeInsets.only(left: 31.h),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 114.v),
          child: Column(
            children: [
              Container(
                decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle101,
                      height: 107.v,
                      width: 102.h,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Omar",
                              style: CustomTextStyles.labelLargeInterBlack900,
                            ),
                            Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgStar22,
                                  height: 15.v,
                                  width: 14.h,
                                  radius: BorderRadius.circular(
                                    1.h,
                                  ),
                                  margin: EdgeInsets.only(bottom: 1.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text(
                                    "5",
                                    style:
                                        CustomTextStyles.labelMediumGray40001,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 53.h,
                          margin: EdgeInsets.only(left: 7.h),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "11 ,13 Feb 24\n",
                                  style: CustomTextStyles
                                      .bodySmallQuestrialff000000,
                                ),
                                TextSpan(
                                  text: "14:30",
                                  style: CustomTextStyles.bodyLargeQuestrial,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6.v),
                  ],
                ),
              ),
              SizedBox(height: 8.v),
              CustomImageView(
                imagePath: ImageConstant.imgLinkedinCyan400,
                height: 18.v,
                width: 13.h,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 20.h),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFortyFive(
    BuildContext context, {
    required String ratingText,
  }) {
    return SizedBox(
      width: 32.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStar23,
            height: 15.v,
            width: 14.h,
            radius: BorderRadius.circular(
              1.h,
            ),
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Text(
            ratingText,
            style: CustomTextStyles.labelMediumGray40001.copyWith(
              color: appTheme.gray40001,
            ),
          ),
        ],
      ),
    );
  }
}

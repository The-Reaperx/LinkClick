import '../home_4_rider_screen/widgets/bookingstopbar_item_widget.dart';
import '../home_4_rider_screen/widgets/userprofile1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';
import 'package:link_click/widgets/app_bar/appbar_leading_image.dart';
import 'package:link_click/widgets/app_bar/custom_app_bar.dart';
import 'package:link_click/widgets/custom_search_view.dart';

class Home4RiderScreen extends StatelessWidget {
  Home4RiderScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 5.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildSearchAndFilter(context),
                  SizedBox(height: 12.v),
                  _buildBookingsTopBar(context),
                  SizedBox(height: 15.v),
                  _buildUserProfile(context),
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
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.fromLTRB(11.h, 15.v, 289.h, 15.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchAndFilter(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.h,
        right: 18.h,
      ),
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
    );
  }

  /// Section Widget
  Widget _buildBookingsTopBar(BuildContext context) {
    return Wrap(
      runSpacing: 40.12.v,
      spacing: 40.12.h,
      children: List<Widget>.generate(3, (index) => BookingstopbarItemWidget()),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 14.v,
          );
        },
        itemCount: 9,
        itemBuilder: (context, index) {
          return Userprofile1ItemWidget();
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';import 'package:link_click/core/app_export.dart';import 'package:link_click/widgets/app_bar/appbar_leading_image.dart';import 'package:link_click/widgets/app_bar/custom_app_bar.dart';import 'package:link_click/widgets/custom_elevated_button.dart';class Home8DriverScreen extends StatelessWidget {const Home8DriverScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 14.v), child: Column(children: [SizedBox(height: 539.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: SizedBox(width: 233.h, child: Text("Your Ride has been made public.", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.25)))), CustomImageView(imagePath: ImageConstant.imgDesigner1, height: 476.v, width: 360.h, alignment: Alignment.bottomCenter)])), SizedBox(height: 35.v), CustomElevatedButton(width: 210.h, text: "Continue", onPressed: () {onTapContinue(context);}), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.fromLTRB(11.h, 15.v, 289.h, 15.v), onTap: () {onTapVector(context);})); } 
/// Navigates to the home7DriverScreen when the action is triggered.
onTapVector(BuildContext context) { Navigator.pushNamed(context, AppRoutes.home7DriverScreen); } 
/// Navigates to the home9DriverScreen when the action is triggered.
onTapContinue(BuildContext context) { Navigator.pushNamed(context, AppRoutes.home9DriverScreen); } 
 }

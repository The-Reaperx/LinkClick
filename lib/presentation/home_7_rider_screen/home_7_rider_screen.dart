import 'package:flutter/material.dart';import 'package:link_click/core/app_export.dart';import 'package:link_click/widgets/custom_elevated_button.dart';class Home7RiderScreen extends StatelessWidget {const Home7RiderScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 48.v), child: Column(children: [SizedBox(width: 242.h, child: Text("Your Ride has been succesfully booked.", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.25))), SizedBox(height: 13.v), CustomImageView(imagePath: ImageConstant.imgImage5, height: 479.v, width: 360.h), SizedBox(height: 45.v), CustomElevatedButton(width: 210.h, text: "Continue", margin: EdgeInsets.only(left: 68.h), onPressed: () {onTapContinue(context);}, alignment: Alignment.centerLeft)])))); } 
/// Navigates to the home8RiderScreen when the action is triggered.
onTapContinue(BuildContext context) { Navigator.pushNamed(context, AppRoutes.home8RiderScreen); } 
 }

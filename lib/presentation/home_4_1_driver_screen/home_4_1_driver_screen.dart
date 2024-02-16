import 'package:flutter/material.dart';import 'package:link_click/core/app_export.dart';import 'package:link_click/widgets/app_bar/appbar_leading_image.dart';import 'package:link_click/widgets/app_bar/custom_app_bar.dart';import 'package:link_click/widgets/custom_elevated_button.dart';import 'package:link_click/widgets/custom_icon_button.dart';import 'package:link_click/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class Home41DriverScreen extends StatelessWidget {Home41DriverScreen({Key? key}) : super(key: key);

TextEditingController carBrandValueController = TextEditingController();

TextEditingController modelValueController = TextEditingController();

TextEditingController seatsValueController = TextEditingController();

TextEditingController colorValueController = TextEditingController();

TextEditingController plateNoValueController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 21.v), child: Column(children: [SizedBox(height: 23.v), SizedBox(height: 189.v, width: 278.h, child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.center, child: Container(height: 189.v, width: 278.h, decoration: BoxDecoration(color: appTheme.blueGray100, borderRadius: BorderRadius.circular(30.h)))), Padding(padding: EdgeInsets.only(right: 7.h), child: CustomIconButton(height: 29.adaptSize, width: 29.adaptSize, padding: EdgeInsets.all(6.h), alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgUnionIndigo100)))])), SizedBox(height: 50.v), _buildCarBrandValue(context), SizedBox(height: 10.v), _buildModelValue(context), SizedBox(height: 18.v), _buildSeatsValue(context), SizedBox(height: 18.v), _buildColorValue(context), SizedBox(height: 18.v), _buildPlateNoValue(context)])), bottomNavigationBar: _buildSave(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.fromLTRB(11.h, 15.v, 289.h, 15.v), onTap: () {onTapVector(context);})); } 
/// Section Widget
Widget _buildCarBrandValue(BuildContext context) { return CustomTextFormField(controller: carBrandValueController, hintText: "Car Brand"); } 
/// Section Widget
Widget _buildModelValue(BuildContext context) { return CustomTextFormField(controller: modelValueController, hintText: "Model"); } 
/// Section Widget
Widget _buildSeatsValue(BuildContext context) { return CustomTextFormField(controller: seatsValueController, hintText: "Seats"); } 
/// Section Widget
Widget _buildColorValue(BuildContext context) { return CustomTextFormField(controller: colorValueController, hintText: "Color"); } 
/// Section Widget
Widget _buildPlateNoValue(BuildContext context) { return CustomTextFormField(controller: plateNoValueController, hintText: "Plate No.", textInputAction: TextInputAction.done); } 
/// Section Widget
Widget _buildSave(BuildContext context) { return CustomElevatedButton(width: 136.h, text: "Save", margin: EdgeInsets.only(left: 112.h, right: 112.h, bottom: 19.v), onPressed: () {onTapSave(context);}); } 
/// Navigates to the home4DriverScreen when the action is triggered.
onTapVector(BuildContext context) { Navigator.pushNamed(context, AppRoutes.home4DriverScreen); } 
/// Navigates to the home4DriverScreen when the action is triggered.
onTapSave(BuildContext context) { Navigator.pushNamed(context, AppRoutes.home4DriverScreen); } 
 }

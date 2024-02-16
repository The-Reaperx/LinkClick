import 'package:flutter/material.dart';import 'package:link_click/core/app_export.dart';import 'package:link_click/widgets/app_bar/appbar_leading_image.dart';import 'package:link_click/widgets/app_bar/custom_app_bar.dart';import 'package:link_click/widgets/custom_elevated_button.dart';import 'package:link_click/widgets/custom_outlined_button.dart';import 'package:link_click/widgets/custom_pin_code_text_field.dart';import 'package:link_click/presentation/home_6_one_bottomsheet/home_6_one_bottomsheet.dart';class Home7DriverScreen extends StatelessWidget {const Home7DriverScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 15.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 29.h), child: Text("Select the Days and Time", style: CustomTextStyles.titleMediumSemiBold))), SizedBox(height: 17.v), Padding(padding: EdgeInsets.only(left: 58.h, right: 51.h), child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("11 Feb", style: theme.textTheme.labelMedium), Text("15 Feb", style: theme.textTheme.labelMedium)]), SizedBox(height: 4.v), _buildCalendarOtpView(context)])), SizedBox(height: 36.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: 185.h, padding: EdgeInsets.symmetric(vertical: 14.v), decoration: AppDecoration.outlineBlueGray, child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [Text("01", style: CustomTextStyles.titleLargeInterPrimary), Text("30", style: CustomTextStyles.titleLargeInterPrimary), Text("55", style: CustomTextStyles.titleLargeInterPrimary)])), _buildTimerPm(context)]), SizedBox(height: 36.v), _buildTimerInsert(context), SizedBox(height: 59.v), Divider(indent: 7.h), SizedBox(height: 35.v), _buildHome7DriverCard7(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildCancel(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.fromLTRB(11.h, 15.v, 289.h, 15.v), onTap: () {onTapVector(context);})); } 
/// Section Widget
Widget _buildCalendarOtpView(BuildContext context) { return CustomPinCodeTextField(context: context, onChanged: (value) {}); } 
/// Section Widget
Widget _buildTimerPm(BuildContext context) { return CustomOutlinedButton(height: 56.v, width: 55.h, text: "PM", buttonStyle: CustomButtonStyles.outlineBlueGray1, buttonTextStyle: CustomTextStyles.titleLargeInterPrimary); } 
/// Section Widget
Widget _buildTimerInsert(BuildContext context) { return CustomElevatedButton(height: 40.v, width: 160.h, text: "Insert", leftIcon: Container(margin: EdgeInsets.only(right: 20.h), child: CustomImageView(imagePath: ImageConstant.imgPlus, height: 16.adaptSize, width: 16.adaptSize)), buttonTextStyle: CustomTextStyles.titleMediumInterOnPrimaryContainer19); } 
/// Section Widget
Widget _buildHome7DriverCard7(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 29.h), padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 8.v), decoration: AppDecoration.outlinePrimary1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Text("Thursday", style: theme.textTheme.titleSmall)), Padding(padding: EdgeInsets.only(top: 3.v, right: 5.h), child: Text("1:30 pm", style: theme.textTheme.titleSmall))])); } 
/// Section Widget
Widget _buildCancelButton(BuildContext context) { return CustomOutlinedButton(width: 135.h, text: "Cancel", buttonTextStyle: CustomTextStyles.titleMediumInterBluegray400); } 
/// Section Widget
Widget _buildSaveButton(BuildContext context) { return CustomElevatedButton(height: 51.v, width: 135.h, text: "Save", margin: EdgeInsets.only(left: 14.h), buttonStyle: CustomButtonStyles.outlineBlack, buttonTextStyle: CustomTextStyles.titleMediumInterOnPrimaryContainer_1); } 
/// Section Widget
Widget _buildCancel(BuildContext context) { return GestureDetector(onTap: () {onTapCancel(context);}, child: Padding(padding: EdgeInsets.only(left: 36.h, right: 36.h, bottom: 32.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildCancelButton(context), _buildSaveButton(context)]))); } 

/// Shows a modal bottom sheet with [Home6OneBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapVector(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>Home6OneBottomsheet(),isScrollControlled: true); } 
/// Navigates to the home8DriverScreen when the action is triggered.
onTapCancel(BuildContext context) { Navigator.pushNamed(context, AppRoutes.home8DriverScreen); } 
 }

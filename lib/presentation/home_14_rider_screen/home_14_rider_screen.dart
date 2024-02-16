import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:link_click/core/app_export.dart';import 'package:link_click/widgets/custom_elevated_button.dart';class Home14RiderScreen extends StatelessWidget {const Home14RiderScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 49.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 283.h, margin: EdgeInsets.only(left: 12.h, right: 40.h), child: Text("You have reached your Destination", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.25))), SizedBox(height: 40.v), Container(margin: EdgeInsets.only(left: 76.h, right: 94.h), padding: EdgeInsets.all(29.h), decoration: AppDecoration.outlinePrimary3.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Text("20 SAR", style: theme.textTheme.headlineMedium), SizedBox(height: 16.v), Text("Amount to Pay ", style: theme.textTheme.titleSmall), SizedBox(height: 3.v)])), SizedBox(height: 60.v), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("Select Payment Method", style: CustomTextStyles.titleMediumSemiBold)), SizedBox(height: 16.v), _buildPaymentIconsColumn(context), Spacer(), SizedBox(height: 20.v), CustomElevatedButton(width: 210.h, text: "Pay ", onPressed: () {onTapPay(context);}, alignment: Alignment.center)])))); } 
/// Section Widget
Widget _buildPaymentIconsColumn(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 26.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup427318158), fit: BoxFit.cover)), child: Column(children: [SizedBox(height: 6.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 45.v, width: 58.h, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.topCenter, child: Container(height: 40.v, width: 58.h, decoration: BoxDecoration(color: theme.colorScheme.onPrimaryContainer, borderRadius: BorderRadius.circular(6.h), border: Border.all(color: appTheme.gray100, width: 1.h)))), CustomImageView(imagePath: ImageConstant.imgTelevision43x43, height: 43.adaptSize, width: 43.adaptSize, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 3.h))])), CustomImageView(imagePath: ImageConstant.imgTelevisionGray300, height: 44.adaptSize, width: 44.adaptSize, margin: EdgeInsets.only(left: 9.h, top: 2.v)), CustomImageView(imagePath: ImageConstant.imgClose, height: 44.adaptSize, width: 44.adaptSize, margin: EdgeInsets.only(left: 20.h, top: 2.v)), Container(height: 40.v, width: 58.h, margin: EdgeInsets.only(left: 12.h, top: 6.v), padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 9.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: CustomImageView(imagePath: ImageConstant.imgSettingsBlack900, height: 17.v, width: 42.h, alignment: Alignment.center)), CustomImageView(imagePath: ImageConstant.imgAppPaypal, height: 44.adaptSize, width: 44.adaptSize, margin: EdgeInsets.only(left: 9.h, top: 2.v))]), SizedBox(height: 3.v), Padding(padding: EdgeInsets.only(left: 21.h, right: 11.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomImageView(imagePath: ImageConstant.imgContrastBlueGray5001, height: 22.adaptSize, width: 22.adaptSize, margin: EdgeInsets.only(right: 18.h))), Expanded(child: CustomImageView(imagePath: ImageConstant.imgContrastBlueGray5001, height: 22.adaptSize, width: 22.adaptSize, margin: EdgeInsets.symmetric(horizontal: 18.h))), Expanded(child: CustomImageView(imagePath: ImageConstant.imgContrastBlueGray5001, height: 22.adaptSize, width: 22.adaptSize, margin: EdgeInsets.symmetric(horizontal: 18.h))), Expanded(child: CustomImageView(imagePath: ImageConstant.imgContrastBlueGray5001, height: 22.adaptSize, width: 22.adaptSize, margin: EdgeInsets.symmetric(horizontal: 18.h))), Expanded(child: CustomImageView(imagePath: ImageConstant.imgContrastBlueGray5001, height: 22.adaptSize, width: 22.adaptSize, margin: EdgeInsets.only(left: 18.h)))]))])); } 
/// Navigates to the home15RiderScreen when the action is triggered.
onTapPay(BuildContext context) { Navigator.pushNamed(context, AppRoutes.home15RiderScreen); } 
 }
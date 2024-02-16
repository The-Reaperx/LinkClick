import '../home_5_bottomsheet/widgets/selectaddress_item_widget.dart';import 'package:flutter/material.dart';import 'package:link_click/core/app_export.dart';import 'package:link_click/widgets/custom_elevated_button.dart';import 'package:link_click/widgets/custom_text_form_field.dart';import 'package:link_click/presentation/home_6_bottomsheet/home_6_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class Home5Bottomsheet extends StatelessWidget {Home5Bottomsheet({Key? key}) : super(key: key);

TextEditingController inputController = TextEditingController();

TextEditingController inputController1 = TextEditingController();

@override Widget build(BuildContext context) { return SingleChildScrollView(child: Container(padding: EdgeInsets.symmetric(vertical: 20.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 27.v), Text("Select address", style: theme.textTheme.titleLarge), SizedBox(height: 7.v), Divider(), SizedBox(height: 15.v), Padding(padding: EdgeInsets.only(left: 15.h, right: 12.h), child: CustomTextFormField(controller: inputController, hintText: "From", hintStyle: theme.textTheme.titleMedium!, prefix: Container(margin: EdgeInsets.fromLTRB(9.h, 17.v, 14.h, 15.v), child: CustomImageView(imagePath: ImageConstant.imgSettingsIndigo100, height: 21.v, width: 22.h)), prefixConstraints: BoxConstraints(maxHeight: 54.v), contentPadding: EdgeInsets.only(top: 14.v, right: 30.h, bottom: 14.v))), SizedBox(height: 14.v), Padding(padding: EdgeInsets.only(left: 15.h, right: 12.h), child: CustomTextFormField(controller: inputController1, hintText: "To", hintStyle: theme.textTheme.titleMedium!, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(9.h, 17.v, 14.h, 15.v), child: CustomImageView(imagePath: ImageConstant.imgLinkedinIndigo100, height: 22.adaptSize, width: 22.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v))), SizedBox(height: 14.v), Divider(), SizedBox(height: 14.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 15.h), child: Text("Recent places", style: theme.textTheme.titleMedium))), SizedBox(height: 4.v), _buildSelectAddress(context), SizedBox(height: 29.v), CustomElevatedButton(height: 42.v, width: 189.h, text: "Next", onPressed: () {onTapNext(context);})]))); } 
/// Section Widget
Widget _buildSelectAddress(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 14.h, right: 18.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 12.v);}, itemCount: 3, itemBuilder: (context, index) {return SelectaddressItemWidget();})); } 

/// Shows a modal bottom sheet with [Home6Bottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapNext(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>Home6Bottomsheet(),isScrollControlled: true); } 
 }

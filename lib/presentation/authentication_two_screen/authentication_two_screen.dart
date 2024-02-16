import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';
import 'package:link_click/widgets/app_bar/appbar_title_button.dart';
import 'package:link_click/widgets/app_bar/custom_app_bar.dart';
import 'package:link_click/widgets/custom_drop_down.dart';
import 'package:link_click/widgets/custom_elevated_button.dart';
import 'package:link_click/widgets/custom_outlined_button.dart';
import 'package:link_click/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AuthenticationTwoScreen extends StatelessWidget {
  AuthenticationTwoScreen({Key? key}) : super(key: key);

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController emailEditText2Controller = TextEditingController();

  List<String> dropdownItemList = ["Male", "Female"];

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.h, vertical: 22.v),
                            child: Column(children: [
                              Container(
                                  width: 332.h,
                                  margin:
                                      EdgeInsets.only(left: 4.h, right: 5.h),
                                  child: Text(
                                      "Sign up with your university \nemail ",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .headlineSmallGray800
                                          .copyWith(height: 1.25))),
                              SizedBox(height: 27.v),
                              _buildEmailEditText(context),
                              SizedBox(height: 22.v),
                              _buildEmailEditText2(context),
                              SizedBox(height: 22.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.h, right: 6.h),
                                  child: CustomDropDown(
                                      hintText: "Gender",
                                      items: dropdownItemList,
                                      onChanged: (value) {})),
                              SizedBox(height: 41.v),
                              _buildSixtySeven(context),
                              SizedBox(height: 12.v),
                              _buildSignUpButton(context),
                              SizedBox(height: 16.v),
                              _buildRow(context),
                              SizedBox(height: 11.v),
                              _buildSignUpWithGmailButton(context),
                              SizedBox(height: 30.v),
                              RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Already have an account?",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: "Poppins")),
                                    TextSpan(text: " "),
                                    TextSpan(
                                        text: "Sign in",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Poppins",
                                        ))
                                  ]),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitleButton(
            margin: EdgeInsets.only(bottom: 77.v),
            onTap: () {
              onTapVector(context);
            }));
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h, right: 6.h),
      child: CustomTextFormField(
          controller: emailEditTextController,
          hintText: "Student ID",
          hintStyle: TextStyle(
              fontFamily: "Poppins",
              fontSize: 16,
              color: Color.fromARGB(219, 208, 208, 208))),
    );
  }

  /// Section Widget
  Widget _buildEmailEditText2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 6.h),
        child: CustomTextFormField(
            controller: emailEditText2Controller,
            hintText: "Email",
            hintStyle: TextStyle(
                fontFamily: "Poppins",
                fontSize: 16,
                color: Color.fromARGB(219, 208, 208, 208)),
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildSixtySeven(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 14.v,
                  width: 15.h,
                  margin: EdgeInsets.only(top: 3.v, bottom: 37.v),
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgContrast,
                        height: 14.v,
                        width: 15.h,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgCheck,
                        height: 5.v,
                        width: 8.h,
                        alignment: Alignment.center)
                  ])),
              Expanded(
                  child: Container(
                      width: 288.h,
                      margin: EdgeInsets.only(left: 12.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "By signing up. you agree to the ",
                                style: CustomTextStyles.labelLargeffb8b8b8),
                            TextSpan(
                                text: "Terms of service",
                                style: CustomTextStyles.labelLargeff21c6ea),
                            TextSpan(
                                text: " and\n",
                                style: CustomTextStyles.labelLargeffb8b8b8),
                            TextSpan(
                                text: "Privacy policy.",
                                style: CustomTextStyles.labelLargeff21c6ea)
                          ]),
                          textAlign: TextAlign.left)))
            ]));
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        height: 49.v,
        text: "Sign Up",
        margin: EdgeInsets.only(left: 19.h, right: 16.h),
        onPressed: () {
          onTapSignUpButton(context);
        });
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 12.v, bottom: 10.v),
                  child: SizedBox(
                      width: 151.h, child: Divider(color: appTheme.gray40001))),
              Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child:
                      Text("or", style: CustomTextStyles.titleMediumGray40001)),
              Padding(
                  padding: EdgeInsets.only(top: 12.v, bottom: 10.v),
                  child: SizedBox(
                      width: 157.h,
                      child: Divider(color: appTheme.gray40001, indent: 6.h)))
            ]));
  }

  /// Section Widget
  Widget _buildSignUpWithGmailButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 44.v,
        text: "Sign up with Gmail",
        margin: EdgeInsets.symmetric(horizontal: 4.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 11.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGmail, height: 12.v, width: 16.h)),
        buttonStyle: CustomButtonStyles.outlineBlueGray,
        buttonTextStyle: theme.textTheme.titleMedium!);
  }

  /// Navigates to the authenticationOneScreen when the action is triggered.
  onTapVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.authenticationOneScreen);
  }

  /// Navigates to the authenticationThreeScreen when the action is triggered.
  onTapSignUpButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.authenticationThreeScreen);
  }
}

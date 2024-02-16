import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';
import 'package:link_click/widgets/app_bar/appbar_leading_image.dart';
import 'package:link_click/widgets/app_bar/custom_app_bar.dart';
import 'package:link_click/widgets/custom_elevated_button.dart';
import 'package:link_click/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AuthenticationThreeScreen extends StatelessWidget {
  AuthenticationThreeScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

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
                                horizontal: 14.h, vertical: 19.v),
                            child: Column(children: [
                              Text("Set password",
                                  style: CustomTextStyles.headlineSmallGray800),
                              SizedBox(height: 8.v),
                              Text("Set your password",
                                  style:
                                      CustomTextStyles.bodyLargePoppinsGray500),
                              SizedBox(height: 35.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: CustomTextFormField(
                                      controller: passwordController,
                                      hintText: "Enter Your Password",
                                      hintStyle: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              219, 208, 208, 208)),
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              30.h, 20.v, 15.h, 20.v),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgSettings,
                                              height: 13.v,
                                              width: 12.h)),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 57.v),
                                      obscureText: true,
                                      contentPadding: EdgeInsets.only(
                                          left: 18.h,
                                          top: 16.v,
                                          bottom: 16.v))),
                              SizedBox(height: 19.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: CustomTextFormField(
                                      controller: confirmpasswordController,
                                      hintText: "Confirm Password",
                                      hintStyle: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              219, 208, 208, 208)),
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              30.h, 21.v, 15.h, 21.v),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgSettings,
                                              height: 13.v,
                                              width: 12.h)),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 58.v),
                                      obscureText: true,
                                      contentPadding: EdgeInsets.only(
                                          left: 18.h,
                                          top: 16.v,
                                          bottom: 16.v))),
                              SizedBox(height: 9.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 21.h),
                                      child: Text(
                                          "Atleast 1 number or a special character",
                                          style: CustomTextStyles
                                              .titleSmallGray50001))),
                              SizedBox(height: 38.v),
                              CustomElevatedButton(
                                  height: 52.v,
                                  text: "Register",
                                  margin:
                                      EdgeInsets.only(left: 14.h, right: 11.h),
                                  onPressed: () {
                                    onTapRegister(context);
                                  }),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.fromLTRB(11.h, 15.v, 289.h, 15.v),
            onTap: () {
              onTapVector(context);
            }));
  }

  /// Navigates to the authenticationTwoScreen when the action is triggered.
  onTapVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.authenticationTwoScreen);
  }

  /// Navigates to the authenticationFourScreen when the action is triggered.
  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.authenticationFourScreen);
  }
}

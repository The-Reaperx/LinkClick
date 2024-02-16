import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:link_click/core/app_export.dart';
import 'package:link_click/widgets/app_bar/appbar_leading_image.dart';
import 'package:link_click/widgets/app_bar/custom_app_bar.dart';
import 'package:link_click/widgets/custom_elevated_button.dart';
import 'package:link_click/widgets/custom_outlined_button.dart';
import 'package:link_click/widgets/custom_phone_number.dart';
import 'package:link_click/widgets/custom_text_form_field.dart';
import 'package:link_click/presentation/home_one_dialog/home_one_dialog.dart';

class AuthenticationFourScreen extends StatefulWidget {
  AuthenticationFourScreen({Key? key}) : super(key: key);

  @override
  _AuthenticationFourScreenState createState() =>
      _AuthenticationFourScreenState();
}

class _AuthenticationFourScreenState extends State<AuthenticationFourScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController yourInterestsValueController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late Country selectedCountry;

  @override
  void initState() {
    super.initState();
    selectedCountry = CountryPickerUtils.getCountryByPhoneCode('966');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Profile", style: TextStyle(fontSize: 18)),
                SizedBox(height: 20),
                Center(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        height: 114,
                        width: 114,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 158, 209, 251),
                          borderRadius: BorderRadius.circular(57),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: IconButton(
                          icon: Icon(Icons.camera),
                          onPressed: () {
                            // Add functionality here
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                _buildFullName(context),
                SizedBox(height: 20),
                _buildPhoneNumber(context),
                SizedBox(height: 20),
                _buildYourInterestsValue(context),
                SizedBox(height: 20),
                CustomElevatedButton(
                    height: 52.v,
                    text: "Save",
                    margin: EdgeInsets.only(left: 14.h, right: 11.h),
                    onPressed: () {
                      onTapRegister(context);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.fromLTRB(11, 15, 289, 15),
        onTap: () {
          onTapVector(context);
        },
      ),
    );
  }

  Widget _buildFullName(BuildContext context) {
    return CustomTextFormField(
        controller: fullNameController,
        hintText: "Full Name",
        hintStyle: TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
            color: Color.fromARGB(219, 208, 208, 208)));
  }

  Widget _buildPhoneNumber(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomPhoneNumber(
            country: selectedCountry,
            controller: phoneNumberController,
            onTap: (Country country) {
              _showCountryPickerDialog(context);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildYourInterestsValue(BuildContext context) {
    return CustomTextFormField(
      controller: yourInterestsValueController,
      hintText: "Your Interests",
      hintStyle: TextStyle(
          fontFamily: "Poppins",
          fontSize: 16,
          color: Color.fromARGB(219, 208, 208, 208)),
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildCancelButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "Cancel",
      onPressed: () {},
    );
  }

  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Save",
      onPressed: () {
        onTapSaveButton(context);
      },
    );
  }

  void onTapVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.authenticationThreeScreen);
  }

  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeTwoScreen);
  }

  void onTapSaveButton(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: HomeOneDialog(),
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.zero,
        insetPadding: const EdgeInsets.only(left: 0),
      ),
    );
  }

  void _showCountryPickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Select Country'),
        content: CountryPickerDialog(
          searchCursorColor: Colors.black,
          searchInputDecoration: InputDecoration(hintText: 'Search...'),
          isSearchable: true,
          titlePadding: EdgeInsets.all(8.0),
          onValuePicked: (Country country) {
            setState(() {
              selectedCountry = country;
            });
            Navigator.pop(context);
          },
          itemBuilder: (Country country) {
            return Row(
              children: <Widget>[
                CountryPickerUtils.getDefaultFlagImage(country),
                SizedBox(width: 8.0),
                Text("${country.name} (${country.isoCode})"),
              ],
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Authentication - One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.authenticationOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Authentication - Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.authenticationTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Authentication - Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.authenticationThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Authentication - Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.authenticationFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - 8 Driver ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home8DriverScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - 9 Driver",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home9DriverScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home  - 10 Driver - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home10DriverContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home-11 Driver",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home11DriverScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home-12 Driver",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home12DriverScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - 13 Driver",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home13DriverScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home-14 Driver",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home14DriverScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home-15 Driver",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home15DriverScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - 16 Driver ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home16DriverScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home-17 Driver",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home17DriverScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - 7 Driver",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home7DriverScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home-Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home-3 Driver",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home3DriverScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home- 4 Driver",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home4DriverScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - 4.1 Driver",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home41DriverScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home 3 - Rider ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home3RiderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home 4- Rider",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home4RiderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home 5 - Rider",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home5RiderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home 6 - Rider ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home6RiderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home 7- Rider",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home7RiderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home 8 - Rider",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home8RiderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home 9 - Rider",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home9RiderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - 10 Rider",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home10RiderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - 11 Rider",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home11RiderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - 12 Rider",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home12RiderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - 14 Rider",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home14RiderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - 15 Rider",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.home15RiderScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}

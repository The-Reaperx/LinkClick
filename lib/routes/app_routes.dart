import 'package:flutter/material.dart';
import 'package:link_click/presentation/authentication_one_screen/authentication_one_screen.dart';
import 'package:link_click/presentation/authentication_two_screen/authentication_two_screen.dart';
import 'package:link_click/presentation/authentication_three_screen/authentication_three_screen.dart';
import 'package:link_click/presentation/authentication_four_screen/authentication_four_screen.dart';
import 'package:link_click/presentation/home_8_driver_screen/home_8_driver_screen.dart';
import 'package:link_click/presentation/home_9_driver_screen/home_9_driver_screen.dart';
import 'package:link_click/presentation/home_10_driver_container_screen/home_10_driver_container_screen.dart';
import 'package:link_click/presentation/home_11_driver_screen/home_11_driver_screen.dart';
import 'package:link_click/presentation/home_12_driver_screen/home_12_driver_screen.dart';
import 'package:link_click/presentation/home_13_driver_screen/home_13_driver_screen.dart';
import 'package:link_click/presentation/home_14_driver_screen/home_14_driver_screen.dart';
import 'package:link_click/presentation/home_15_driver_screen/home_15_driver_screen.dart';
import 'package:link_click/presentation/home_16_driver_screen/home_16_driver_screen.dart';
import 'package:link_click/presentation/home_17_driver_screen/home_17_driver_screen.dart';
import 'package:link_click/presentation/home_7_driver_screen/home_7_driver_screen.dart';
import 'package:link_click/presentation/home_two_screen/home_two_screen.dart';
import 'package:link_click/presentation/home_3_driver_screen/home_3_driver_screen.dart';
import 'package:link_click/presentation/home_4_driver_screen/home_4_driver_screen.dart';
import 'package:link_click/presentation/home_4_1_driver_screen/home_4_1_driver_screen.dart';
import 'package:link_click/presentation/home_3_rider_screen/home_3_rider_screen.dart';
import 'package:link_click/presentation/home_4_rider_screen/home_4_rider_screen.dart';
import 'package:link_click/presentation/home_5_rider_screen/home_5_rider_screen.dart';
import 'package:link_click/presentation/home_6_rider_screen/home_6_rider_screen.dart';
import 'package:link_click/presentation/home_7_rider_screen/home_7_rider_screen.dart';
import 'package:link_click/presentation/home_8_rider_screen/home_8_rider_screen.dart';
import 'package:link_click/presentation/home_9_rider_screen/home_9_rider_screen.dart';
import 'package:link_click/presentation/home_10_rider_screen/home_10_rider_screen.dart';
import 'package:link_click/presentation/home_11_rider_screen/home_11_rider_screen.dart';
import 'package:link_click/presentation/home_12_rider_screen/home_12_rider_screen.dart';
import 'package:link_click/presentation/home_14_rider_screen/home_14_rider_screen.dart';
import 'package:link_click/presentation/home_15_rider_screen/home_15_rider_screen.dart';
import 'package:link_click/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String authenticationOneScreen = '/authentication_one_screen';

  static const String authenticationTwoScreen = '/authentication_two_screen';

  static const String authenticationThreeScreen =
      '/authentication_three_screen';

  static const String authenticationFourScreen = '/authentication_four_screen';

  static const String home8DriverScreen = '/home_8_driver_screen';

  static const String home9DriverScreen = '/home_9_driver_screen';

  static const String home10DriverPage = '/home_10_driver_page';

  static const String home10DriverContainerScreen =
      '/home_10_driver_container_screen';

  static const String home11DriverScreen = '/home_11_driver_screen';

  static const String home12DriverScreen = '/home_12_driver_screen';

  static const String home13DriverScreen = '/home_13_driver_screen';

  static const String home14DriverScreen = '/home_14_driver_screen';

  static const String home15DriverScreen = '/home_15_driver_screen';

  static const String home16DriverScreen = '/home_16_driver_screen';

  static const String home17DriverScreen = '/home_17_driver_screen';

  static const String home7DriverScreen = '/home_7_driver_screen';

  static const String homeTwoScreen = '/home_two_screen';

  static const String home3DriverScreen = '/home_3_driver_screen';

  static const String home4DriverScreen = '/home_4_driver_screen';

  static const String home41DriverScreen = '/home_4_1_driver_screen';

  static const String home3RiderScreen = '/home_3_rider_screen';

  static const String home4RiderScreen = '/home_4_rider_screen';

  static const String home5RiderScreen = '/home_5_rider_screen';

  static const String home6RiderScreen = '/home_6_rider_screen';

  static const String home7RiderScreen = '/home_7_rider_screen';

  static const String home8RiderScreen = '/home_8_rider_screen';

  static const String home9RiderScreen = '/home_9_rider_screen';

  static const String home10RiderScreen = '/home_10_rider_screen';

  static const String home11RiderScreen = '/home_11_rider_screen';

  static const String home12RiderScreen = '/home_12_rider_screen';

  static const String home14RiderScreen = '/home_14_rider_screen';

  static const String home15RiderScreen = '/home_15_rider_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    authenticationOneScreen: (context) => AuthenticationOneScreen(),
    authenticationTwoScreen: (context) => AuthenticationTwoScreen(),
    authenticationThreeScreen: (context) => AuthenticationThreeScreen(),
    homeTwoScreen: (context) => HomeTwoScreen(),
    authenticationFourScreen: (context) => AuthenticationFourScreen(),
    home8DriverScreen: (context) => Home8DriverScreen(),
    home9DriverScreen: (context) => Home9DriverScreen(),
    home10DriverContainerScreen: (context) => Home10DriverContainerScreen(),
    home11DriverScreen: (context) => Home11DriverScreen(),
    home12DriverScreen: (context) => Home12DriverScreen(),
    home13DriverScreen: (context) => Home13DriverScreen(),
    home14DriverScreen: (context) => Home14DriverScreen(),
    home15DriverScreen: (context) => Home15DriverScreen(),
    home16DriverScreen: (context) => Home16DriverScreen(),
    home17DriverScreen: (context) => Home17DriverScreen(),
    home7DriverScreen: (context) => Home7DriverScreen(),
    home3DriverScreen: (context) => Home3DriverScreen(),
    home4DriverScreen: (context) => Home4DriverScreen(),
    home41DriverScreen: (context) => Home41DriverScreen(),
    home3RiderScreen: (context) => Home3RiderScreen(),
    home4RiderScreen: (context) => Home4RiderScreen(),
    home5RiderScreen: (context) => Home5RiderScreen(),
    home6RiderScreen: (context) => Home6RiderScreen(),
    home7RiderScreen: (context) => Home7RiderScreen(),
    home8RiderScreen: (context) => Home8RiderScreen(),
    home9RiderScreen: (context) => Home9RiderScreen(),
    home10RiderScreen: (context) => Home10RiderScreen(),
    home11RiderScreen: (context) => Home11RiderScreen(),
    home12RiderScreen: (context) => Home12RiderScreen(),
    home14RiderScreen: (context) => Home14RiderScreen(),
    home15RiderScreen: (context) => Home15RiderScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}

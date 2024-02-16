import 'package:flutter/material.dart';import 'package:link_click/core/app_export.dart';import 'package:link_click/presentation/home_10_driver_page/home_10_driver_page.dart';import 'package:link_click/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class Home10DriverContainerScreen extends StatelessWidget {Home10DriverContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.home10DriverPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.home10DriverPage; case BottomBarEnum.Matches: return "/"; case BottomBarEnum.Trips: return "/"; case BottomBarEnum.Wallet: return "/"; case BottomBarEnum.Profile: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.home10DriverPage: return Home10DriverPage(); default: return DefaultWidget();} } 
 }

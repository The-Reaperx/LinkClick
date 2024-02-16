import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 45.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 45.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgShadow:
        return Stack(
          children: [
            Container(
              height: 95.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer,
                boxShadow: [
                  BoxShadow(
                    color: appTheme.black900.withOpacity(0.25),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      4,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 81.v,
              width: 327.h,
              margin: EdgeInsets.fromLTRB(16.h, 4.v, 17.h, 10.v),
              decoration: BoxDecoration(
                color: appTheme.lightBlue50,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
                border: Border.all(
                  color: theme.colorScheme.onPrimaryContainer,
                  width: 1.h,
                ),
              ),
            ),
          ],
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgShadow,
}

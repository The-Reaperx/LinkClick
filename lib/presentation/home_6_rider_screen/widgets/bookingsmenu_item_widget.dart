import 'package:flutter/material.dart';
import 'package:link_click/core/app_export.dart';

// ignore: must_be_immutable
class BookingsmenuItemWidget extends StatelessWidget {
  const BookingsmenuItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Availble Bookings",
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.primary,
      selectedColor: theme.colorScheme.onPrimaryContainer,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.cyan400,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          12.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.cyan400,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.onPrimaryContainer,
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray30001,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: Color(0XFF000000),
          fontSize: 18.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 15.fSize,
          fontFamily: 'Ramabhadra',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 11.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: Color(0XFFFFFFFF),
          fontSize: 36.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 32.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(
          color: appTheme.gray700,
          fontSize: 28.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: appTheme.gray700,
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray800,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.gray700,
          fontSize: 20.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray700,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray700,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF21C6EA),
    primaryContainer: Color(0XFF243747),
    secondaryContainer: Color(0XFFB9B6B6),

    // Error colors
    errorContainer: Color(0XFF757575),
    onErrorContainer: Color(0XFF121212),

    // On colors(text colors)
    onPrimary: Color(0XFF1E1E1E),
    onPrimaryContainer: Color(0XFFFFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray10001 => Color(0XFFD0D0D0);
  Color get blueGray400 => Color(0XFF8F8B8B);
  Color get blueGray40001 => Color(0XFF8B8B8B);
  Color get blueGray50 => Color(0XFFEFF2F6);
  Color get blueGray5001 => Color(0XFFEBF2F7);

  // Cyan
  Color get cyan400 => Color(0XFF2BA9D1);

  // DeepPurple
  Color get deepPurpleA200 => Color(0XFF665AEA);

  // Gray
  Color get gray100 => Color(0XFFF8F6F5);
  Color get gray200 => Color(0XFFEDEDED);
  Color get gray300 => Color(0XFFE6E6E6);
  Color get gray30001 => Color(0XFFDDDDDD);
  Color get gray30002 => Color(0XFFE0DBD5);
  Color get gray400 => Color(0XFFC4C4C4);
  Color get gray40001 => Color(0XFFB8B8B8);
  Color get gray50 => Color(0XFFF2F7FF);
  Color get gray500 => Color(0XFFA0A0A0);
  Color get gray50001 => Color(0XFFA5A5A5);
  Color get gray700 => Color(0XFF5A5A5A);
  Color get gray70001 => Color(0XFF686868);
  Color get gray800 => Color(0XFF414141);
  Color get gray900 => Color(0XFF222222);
  Color get gray90001 => Color(0XFF171717);
  Color get gray90002 => Color(0XFF262626);

  // Indigo
  Color get indigo100 => Color(0XFFC2CCDE);

  // LightBlue
  Color get lightBlue100 => Color(0XFFA1EEFF);
  Color get lightBlue50 => Color(0XFFE4FAFF);

  // Red
  Color get red100 => Color(0XFFFFCDD2);
  Color get red500 => Color(0XFFF44336);
  Color get redA400 => Color(0XFFF42A41);

  // Teal
  Color get teal800 => Color(0XFF0D7E45);

  // Yellow
  Color get yellow700 => Color(0XFFFBC02D);
  Color get yellow70001 => Color(0XFFF8C33C);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

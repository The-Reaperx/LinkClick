import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargePoppinsGray500 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray500,
        fontSize: 16.fSize,
      );
  static get bodyLargePoppinsGray800 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray800,
        fontSize: 16.fSize,
      );
  static get bodyLargePoppinsGray80017 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray800,
        fontSize: 17.fSize,
      );
  static get bodyLargeQuestrial => theme.textTheme.bodyLarge!.questrial;
  static get bodyLargeRobotoDeeppurpleA200 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.deepPurpleA200,
        fontSize: 16.fSize,
      );
  static get bodyLargeRobotoOnPrimary =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 16.fSize,
      );
  static get bodyMediumRobotoGray70001 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray70001,
        fontSize: 13.fSize,
      );
  static get bodyMediumRobotoGray900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmallPoppinsBlack900 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsGray40001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray40001,
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsGray400018 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray40001,
        fontSize: 8.fSize,
      );
  static get bodySmallPoppinsGray500 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray500,
        fontSize: 8.fSize,
      );
  static get bodySmallPoppinsGray700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray700,
        fontSize: 12.fSize,
      );
  static get bodySmallQuestrialff000000 =>
      theme.textTheme.bodySmall!.questrial.copyWith(
        color: Color(0XFF000000),
        fontSize: 9.fSize,
      );
  static get bodySmallRobotoDeeppurpleA200 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.deepPurpleA200,
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoGray900 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.gray900,
        fontSize: 12.fSize,
      );
  static get bodySmallff000000 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF000000),
        fontSize: 9.fSize,
      );
  // Headline text style
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallGray800 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallGray800Regular =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallTeal800 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.teal800,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallff000000 => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF000000),
      );
  static get headlineSmallff0d7e45 => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF0D7E45),
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallff0d7e45Bold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF0D7E45),
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallff2ba9d1 => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF2BA9D1),
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeCyan400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.cyan400,
      );
  static get labelLargeGray40001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40001,
      );
  static get labelLargeInterBlack900 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeff21c6ea => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF21C6EA),
      );
  static get labelLargeffb8b8b8 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFB8B8B8),
      );
  static get labelMediumGray400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray400,
        fontSize: 11.fSize,
      );
  static get labelMediumGray40001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray40001,
        fontSize: 11.fSize,
      );
  static get labelMediumGray700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get labelMediumInterBlack900 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.55),
      );
  static get labelMediumInterBlack90011 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.8),
        fontSize: 11.fSize,
      );
  static get labelMediumSemiBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Roboto text style
  static get robotoOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary,
        fontSize: 90.fSize,
        fontWeight: FontWeight.w300,
      ).roboto;
  // Title text style
  static get titleLargeInterOnPrimaryContainer =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeInterPrimary =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRalewayBlack900 =>
      theme.textTheme.titleLarge!.raleway.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRamabhadra =>
      theme.textTheme.titleLarge!.ramabhadra.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray10001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray10001,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleMediumGray40001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray40001,
      );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray80018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: 18.fSize,
      );
  static get titleMediumGray90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumInterBlack900SemiBold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterBluegray400 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleMediumInterOnPrimaryContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
      );
  static get titleMediumInterOnPrimaryContainer19 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 19.fSize,
      );
  static get titleMediumInterOnPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPublicSansBlack900 =>
      theme.textTheme.titleMedium!.publicSans.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumff21c6ea => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF21C6EA),
      );
  static get titleMediumff5a5a5a => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF5A5A5A),
      );
  static get titleMediumff5a5a5aBold => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF5A5A5A),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumffffffff => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get titleMediumffffffffBold => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.85),
        fontSize: 15.fSize,
      );
  static get titleSmallGray40001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40001,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
      );
  static get titleSmallGray50001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRalewayBlack900 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRalewayGray800 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRalewayOnPrimaryContainer =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get publicSans {
    return copyWith(
      fontFamily: 'Public Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get questrial {
    return copyWith(
      fontFamily: 'Questrial',
    );
  }

  TextStyle get ramabhadra {
    return copyWith(
      fontFamily: 'Ramabhadra',
    );
  }
}

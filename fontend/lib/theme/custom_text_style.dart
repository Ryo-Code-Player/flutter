import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge17 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: getFontSize(
          17,
        ),
      );
  static get bodyLargeBluegray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeGray700_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeblack => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeGreen800 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.green800,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeRed50001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red50001,
      );
  static get bodyLargeSFProText => theme.textTheme.bodyLarge!.sFProText;
  static get bodyLargeSFProTextPrimary =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeSFProText_1 => theme.textTheme.bodyLarge!.sFProText;
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: getFontSize(
          13,
        ),
      );
  static get bodyMedium13_1 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: getFontSize(
          13,
        ),
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: getFontSize(
          13,
        ),
      );
  static get bodyMediumGray700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumGray700_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumGray700_3 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumGreen700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.green700,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodySmallGray10002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray10002,
      );

  static get bodyErrorStyle => theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: appTheme.errorColor,
    fontWeight: FontWeight.w400,
    fontSize: getFontSize(16)
      );

  static get bodyHintStyle => theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: appTheme.black40,
    fontWeight: FontWeight.w400,
    fontSize: getFontSize(16)
      );
 static get bodyStyle24Black => theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: appTheme.black900,
    fontWeight: FontWeight.w400,
    fontFamily: "Gilroy",
    fontSize: getFontSize(24)
      );

  static TextStyle txtSFProDisplayRegular12Black900 = TextStyle(
    color: appTheme.black900,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w600,
  );
  static TextStyle txtSFProDisplayRegular14PrimaryColor = TextStyle(
    color: appTheme.buttonColor,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w600,
  );
  static TextStyle txtSFProDisplayRegular12Black900Width400 = TextStyle(
    color: appTheme.black900,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtSFProTextSemibold20 = TextStyle(
    color: appTheme.black900,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w700,
  );
  static TextStyle txtCallout = TextStyle(
    color: appTheme.black900,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w600,
  );
  static TextStyle txtBody = TextStyle(
    color: appTheme.black900,
    fontSize: getFontSize(
      17,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtBodygray = TextStyle(
    color: appTheme.gray400,
    fontSize: getFontSize(
      17,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
  );
  static TextStyle txSubtitle16width400gray700 = TextStyle(
    color: appTheme.gray700,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
  );



  static TextStyle txtSFProDisplayRegular16 = TextStyle(
    color: appTheme.gray600,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtSFProDisplay17width400 = TextStyle(
    color: appTheme.black900,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtSFProDisplay17width700 = TextStyle(
    color: appTheme.black900,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w700,
  );



  static TextStyle txtSFProDisplayRegular14 = TextStyle(
    color: appTheme.gray600,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
  );


  static TextStyle txtSFProDisplayRegular12Gray10001 = TextStyle(
    color: appTheme.gray10001,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
  );


  static TextStyle txtFootnote = TextStyle(
    color: appTheme.black900,
    fontSize: getFontSize(
      13,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtFootnoteGray700 = TextStyle(
    color: appTheme.gray700,
    fontSize: getFontSize(
      13,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtSFProDisplayRegular14Green700 = TextStyle(
    color: appTheme.buttonColor,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtHeadline18Width400 = TextStyle(
    color: appTheme.black900,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtHeadline18Width400gray = TextStyle(
    color: appTheme.gray600,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
  );
  static TextStyle txtSFProTextRegular16 = TextStyle(
    color: appTheme.black900,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtHeadline = TextStyle(
    color: appTheme.black900,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w600,
  );
  // Title text style
  static get titleLarge20 => theme.textTheme.titleLarge!.copyWith(
        fontSize: getFontSize(
          20,
        ),
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMedium16_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumAmber700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.amber700,
      );
  static get titleMediumAmberA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.amberA700,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGreenA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.greenA700,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumPrimary16 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimaryMedium => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRed50001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red50001,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumRed50001_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red50001,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

}

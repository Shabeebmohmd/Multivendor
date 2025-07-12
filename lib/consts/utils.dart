import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muliti_vendor_app/widgets/common/google_font_style.dart';

class Utils {
  static const double kSpacingXS = 2.0;
  static const double kSpacingS = 5.0;
  static const double kSpacingM = 10.0;
  static const double kSpacingL = 20.0;
  static const double kSpacingXL = 40.0; 
  
  // Font sizes
  static const double kFontSizeXS = 10.0;
  static const double kFontSizeS = 12.0;
  static const double kFontSizeM = 14.0;
  static const double kFontSizeL = 16.0;
  static const double kFontSizeXL = 20.0;
  static const double kFontSizeXXL = 22.0;
  
  // Border radius
  static const double kBorderRadiusS = 5.0;
  static const double kBorderRadiusM = 8.0;
  static const double kBorderRadiusL = 10.0;

  static TextStyle googleFontStyle({
    required String fontFamily,
    required double fontSize,
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
    FontStyle fontStyle = FontStyle.normal,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.getFont(
      fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  SizedBox iconBuilder({
    required String label,
    required String image,
    double? textSize,
    double? width,
    double? height,
  }) {
    return SizedBox(
      width: width ?? 30,
      height: height ?? 50,
      child: Column(
        children: [
          Image.asset(image),
          GoogleFontText(
            label,
            fontFamily: 'Quicksand',
            fontSize: textSize ?? 10,
          ),
        ],
      ),
    );
  }
}

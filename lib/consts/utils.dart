import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Utils {
  static const kSpacingH = SizedBox(height: 10);
  static const kSpacingSmallH = SizedBox(height: 5);
  static const kSpacingW = SizedBox(width: 10);
  static const kSpacingSmallW = SizedBox(width: 5);

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
}

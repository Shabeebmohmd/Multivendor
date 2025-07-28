import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontText extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
  final FontStyle fontStyle;
  final double? letterSpacing;
  final double? height;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final bool? softWrap;

  const GoogleFontText(
    this.text, {
    super.key,
    required this.fontFamily,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.color,
    this.fontStyle = FontStyle.normal,
    this.letterSpacing,
    this.height,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.softWrap,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.getFont(
        fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        height: height,
      ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/consts/colors.dart';
import 'package:muliti_vendor_app/widgets/common/google_font_style.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Icon(Icons.location_pin, size: 30, color: AppColors.primary),
        GoogleFontText(
          'ABCD, New Delhi',
          fontFamily: 'Quicksand',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        Icon(Icons.keyboard_arrow_down, color: AppColors.primary),
      ],
    );
  }
}
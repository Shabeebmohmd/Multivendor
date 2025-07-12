import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/consts/colors.dart';
import 'package:muliti_vendor_app/consts/data.dart';
import 'package:muliti_vendor_app/consts/utils.dart';
import 'package:muliti_vendor_app/widgets/common/category_item_builder.dart';
import 'package:muliti_vendor_app/widgets/common/google_font_style.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GoogleFontText(
          'What would you like to do today?',
          fontFamily: 'Quicksand',
          fontSize: 21,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: Utils.kSpacingM),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.65,
            crossAxisSpacing: 10,
            mainAxisSpacing: 1,
          ),
          itemBuilder: (context, index) {
            return CategoryItemBuilder(index: index);
          },
          itemCount: categoryImages.length,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GoogleFontText(
              'More',
              fontFamily: 'Quicksand',
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
            Icon(Icons.keyboard_arrow_down, color: AppColors.primary),
          ],
        ),
      ],
    );
  }
}


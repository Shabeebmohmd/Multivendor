import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/consts/colors.dart';
import 'package:muliti_vendor_app/consts/utils.dart';
import 'package:muliti_vendor_app/widgets/common/google_font_style.dart';
import 'package:muliti_vendor_app/widgets/common/trending_product_card.dart';

class TrendingSection extends StatelessWidget {
  const TrendingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              GoogleFontText(
                'Trending',
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
              GoogleFontText(
                'See all',
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: AppColors.primary,
              ),
            ],
          ),
        ),

        // Horizontal scrolling: each item is a column with 2 identical cards
        SizedBox(
          height: 260, // enough to show 2 cards with padding
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemBuilder: (context, index) {
              return SizedBox(
                width: 290,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    TrendingProductCard(),
                    SizedBox(height: Utils.kSpacingM),
                    TrendingProductCard(),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

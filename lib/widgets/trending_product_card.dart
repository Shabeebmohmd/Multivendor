import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/consts/colors.dart';
import 'package:muliti_vendor_app/consts/utils.dart';
import 'package:muliti_vendor_app/widgets/google_Font_Style.dart';

class TrendingProductCard extends StatelessWidget {
  const TrendingProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 286,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              'assets/images/icecream.jpg',
              width: 80,
              height: 88,
              fit: BoxFit.cover,
            ),
          ),
          Utils.kSpacingW,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                GoogleFontText(
                  'Mithas Bhandar',
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
                Utils.kSpacingSmallH,
                GoogleFontText(
                  'Sweets, North Indian\n(store location) | 6.4 kms',
                  fontFamily: 'Quicksand',
                  fontSize: 12,
                  color: AppColors.greyDark,
                ),
                Utils.kSpacingSmallH,
                GoogleFontText(
                  '★ 4.1 | 45 mins',
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: AppColors.greyDark,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

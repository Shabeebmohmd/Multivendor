import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/core/consts/colors.dart';
import 'package:muliti_vendor_app/core/consts/utils.dart';
import 'package:muliti_vendor_app/widgets/common/google_font_style.dart';
import 'package:muliti_vendor_app/widgets/common/near_store_product_card.dart';

class NearbyStoreSection extends StatelessWidget {
  const NearbyStoreSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              GoogleFontText(
                'Nearby stores',
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
        NearProductCard(),
        SizedBox(height: Utils.kSpacingS),
        NearProductCard(),
        SizedBox(height: Utils.kSpacingXL),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Set your radius here
              ),
              onPressed: () {},
              color: AppColors.primary,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 10,
                ),
                child: GoogleFontText(
                  'View all store',
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.backGround,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
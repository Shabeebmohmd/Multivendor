import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/core/consts/colors.dart';
import 'package:muliti_vendor_app/core/consts/utils.dart';
import 'package:muliti_vendor_app/widgets/common/google_font_style.dart';

class NearProductCard extends StatelessWidget {
  const NearProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.backGround,
        borderRadius: BorderRadius.circular(5),
        // boxShadow: const [
        //   BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        // ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/bread.jpg',
                fit: BoxFit.fill,
                height: 80,
                width: 72,
              ),
            ),
          ),
          SizedBox(width: Utils.kSpacingS),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GoogleFontText(
                            'Freshly Baker',
                            fontFamily: 'Quicksand',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                          GoogleFontText(
                            'Sweets, North Indian',
                            fontFamily: 'Quicksand',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.greyDark,
                          ),
                          GoogleFontText(
                            'Site No - 1 | 6.4 kms ',
                            fontFamily: 'Quicksand',
                            fontSize: 12,
                          ),
                          SizedBox(height: Utils.kSpacingS),
                          Container(
                            padding: EdgeInsets.all(4.5),
                            decoration: BoxDecoration(
                              color: AppColors.greyLight,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: GoogleFontText(
                              'Top Store',
                              fontFamily: 'Quicksand',
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GoogleFontText(
                            '★ 4.1',
                            fontFamily: 'Quicksand',
                            fontSize: 16,
                          ),
                          GoogleFontText(
                            '45 mins',
                            fontFamily: 'Quicksand',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: AppColors.button_1,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(),
                  //offer section
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/offer.png',
                            width: 15,
                            height: 15,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(width: Utils.kSpacingS),
                          GoogleFontText(
                            'Upto 10% OFF',
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w700,
                            fontSize: 11,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      const SizedBox(width: Utils.kSpacingS),
                      Expanded(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/grocery.png',
                              width: 15,
                              height: 15,
                              // fit: BoxFit.fitWidth,
                            ),
                            const SizedBox(width: Utils.kSpacingS),
                            Flexible(
                              child: GoogleFontText(
                                '3400+ items available',
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w700,
                                fontSize: 11,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

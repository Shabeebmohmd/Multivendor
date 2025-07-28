import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/core/consts/colors.dart';
import 'package:muliti_vendor_app/core/consts/utils.dart';
import 'package:muliti_vendor_app/widgets/common/google_font_style.dart';

class ReferandEarnSection extends StatelessWidget {
  const ReferandEarnSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GoogleFontText(
                    'Refer & Earn',
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: AppColors.backGround,
                  ),
                ),
                SizedBox(height: Utils.kSpacingS),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      GoogleFontText(
                        'Invite your friends & earn',
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: AppColors.backGround,
                      ),
                      SizedBox(width: Utils.kSpacingS),
                      GoogleFontText(
                        '15% off',
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: AppColors.backGround,
                      ),
                      SizedBox(width: Utils.kSpacingM),
                      Icon(
                        Icons.arrow_circle_right,
                        color: AppColors.backGround,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Image.asset(
                'assets/images/gift.png',
                width: 72,
                height: 75.59,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

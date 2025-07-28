import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/core/consts/colors.dart';
import 'package:muliti_vendor_app/core/consts/data.dart';
import 'package:muliti_vendor_app/core/consts/utils.dart';
import 'package:muliti_vendor_app/widgets/common/google_font_style.dart';

class CategoryItemBuilder extends StatelessWidget {
  const CategoryItemBuilder({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.backGround,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(Utils.kBorderRadiusS),
                  ),
                  constraints: BoxConstraints(minWidth: 50, minHeight: 65),
                  child: Center(
                    child: SizedBox(
                      width: 40,
                      child: Image.asset(categoryImages[index]),
                    ),
                  ),
                ),
                if (index < 3 || index == 7)
                  Positioned(
                    right: 10,
                    top: 4,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                      decoration: BoxDecoration(
                        color: AppColors.offertagColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: GoogleFontText(
                          '10%off',
                          fontFamily: 'Quicksand',
                          color: AppColors.backGround,
                          fontWeight: FontWeight.w500,
                          fontSize: 8,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
        Text(
          categoryNames[index].replaceFirst(' ', '\n'),
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}

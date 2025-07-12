import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/consts/colors.dart';
import 'package:muliti_vendor_app/consts/utils.dart';
import 'package:muliti_vendor_app/widgets/common/google_font_style.dart';

class FruitCarouselSection extends StatelessWidget {
  const FruitCarouselSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        GoogleFontText(
          'Top picks for you',
          fontFamily: 'Quicksand',
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        CarouselSlider.builder(
          itemCount: 2,
          itemBuilder: (context, index, _) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                decoration: BoxDecoration(
                  color:
                      index == 1 ? AppColors.offertagColor : AppColors.primary,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 20),
                      child: Column(
                        children: [
                          GoogleFontText(
                            'DISCOUNT\n25% ALL\nFRUITS',
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: AppColors.backGround,
                          ),
                          SizedBox(height: Utils.kSpacingM),
                          MaterialButton(
                            onPressed: () {},
                            color: AppColors.button_1,
                            child: GoogleFontText(
                              'CHECK NOW',
                              fontFamily: 'Poppins',
                              color: AppColors.backGround,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Image.asset(
                        'assets/images/fruits.png',
                        width: 205,
                        height: 197,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: 200,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            scrollDirection: Axis.horizontal,
            initialPage: 0,
            viewportFraction: 1.0,
            padEnds: true,
          ),
        ),
      ],
    );
  }
}

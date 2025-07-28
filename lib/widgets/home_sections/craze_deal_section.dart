import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/core/consts/colors.dart';
import 'package:muliti_vendor_app/core/consts/utils.dart';
import 'package:muliti_vendor_app/widgets/common/google_font_style.dart';


/// A stateless widget that displays a "Craze deals" section with a header and a horizontal carousel slider.
/// Each carousel item features a styled container with an image, promotional text, and an "Explore" button.
/// Designed for use in a multi-vendor shopping app home screen.
class CrazedealsSection extends StatelessWidget {
  const CrazedealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        GoogleFontText(
          'Craze deals',
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
        const SizedBox(
          height: Utils.kSpacingM,
        ), 
        CarouselSlider.builder(
          itemCount: 2,
          itemBuilder: (context, index, _) {
            return Container(
              decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 10,
                    top: 30,
                    child: Image.asset(
                      'assets/images/vegtables.png',
                      width: 133,
                      height: 157.78, 
                      fit: BoxFit.cover, 
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 20,
                    ), 
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GoogleFontText(
                          'Customer favourite\ntop supermarkets',
                          fontFamily: 'Poppins',
                          fontSize: 22, 
                          fontWeight: FontWeight.w600,
                          color: AppColors.backGround,
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: GoogleFontText(
                                'Explore',
                                fontFamily: 'Quicksand',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.button_1,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: AppColors.button_1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          options: CarouselOptions(
            height: 170, 
            reverse: false,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 3),
            scrollDirection: Axis.horizontal,
            initialPage: 0,
            viewportFraction: 1.0,
            padEnds: true,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
          ),
        ),
      ],
    );
  }
}
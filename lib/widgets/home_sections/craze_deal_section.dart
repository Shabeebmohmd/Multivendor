import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/consts/colors.dart';
import 'package:muliti_vendor_app/consts/utils.dart';
import 'package:muliti_vendor_app/widgets/common/google_font_style.dart';

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
        ), // Replace spacing property with SizedBox
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
                      height: 157.78, // Reduced height to fit within carousel
                      fit: BoxFit.cover, // Use contain to avoid distortion
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 20,
                    ), // Reduced top padding
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GoogleFontText(
                          'Customer favourite\ntop supermarkets',
                          fontFamily: 'Poppins',
                          fontSize: 22, // Reduced font size slightly
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
            height: 170, // Slightly increased height
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

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:muliti_vendor_app/consts/colors.dart';
// import 'package:muliti_vendor_app/consts/utils.dart';
// import 'package:muliti_vendor_app/widgets/common/google_font_style.dart';

// class CrazedealsSection extends StatelessWidget {
//   const CrazedealsSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         //header
//         GoogleFontText(
//           'Craze deals',
//           fontFamily: 'Quicksand',
//           fontWeight: FontWeight.w700,
//           fontSize: 20,
//         ),
//         const SizedBox(height: Utils.kSpacingM),
//         CarouselSlider.builder(
//           itemCount: 2,
//           itemBuilder: (context, index, _) {
//             return Container(
//               decoration: BoxDecoration(
//                 color: AppColors.black,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     right: 10,
//                     top: 10,
//                     child: Image.asset(
//                       'assets/images/vegtables.png',
//                       width: 133,
//                       height: 157.78,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20, top: 40),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         GoogleFontText(
//                           'Customer favourite\ntop supermarkets',
//                           fontFamily: 'Poppins',
//                           fontSize: 22,
//                           fontWeight: FontWeight.w600,
//                           color: AppColors.backGround,
//                         ),
//                         Row(
//                           children: [
//                             TextButton(
//                               onPressed: () {},
//                               child: GoogleFontText(
//                                 'Explore',
//                                 fontFamily: 'Quicksand',
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w700,
//                                 color: AppColors.button_1,
//                               ),
//                             ),
//                             SizedBox(height: Utils.kSpacingS),
//                             Icon(
//                               Icons.arrow_forward,
//                               color: AppColors.button_1,
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//           options: CarouselOptions(
//             height: 170,
//             reverse: false,
//             autoPlay: true,
//             autoPlayInterval: const Duration(seconds: 3),
//             scrollDirection: Axis.horizontal,
//             initialPage: 0,
//             viewportFraction: 1.0,
//             padEnds: true,
//             enlargeCenterPage: true,
//             enlargeFactor: 0.3,
//           ),
//         ),
//       ],
//     );
//   }
// }

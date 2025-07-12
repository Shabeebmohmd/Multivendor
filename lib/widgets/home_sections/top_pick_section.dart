import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/consts/colors.dart';
import 'package:muliti_vendor_app/consts/utils.dart';
import 'package:muliti_vendor_app/widgets/common/google_font_style.dart';

class TopPickSection extends StatelessWidget {
  const TopPickSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GoogleFontText(
          'Top picks for you',
          fontFamily: 'Quicksand',
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        const SizedBox(
          height: Utils.kSpacingM,
        ), // Replace spacing property with SizedBox
        CarouselSlider.builder(
          itemCount: 2,
          itemBuilder: (context, index, _) {
            return Container(
              decoration: BoxDecoration(
                color: index == 1 ? AppColors.offertagColor : AppColors.primary,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                      ), // Reduced top padding
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GoogleFontText(
                              'DISCOUNT\n25% ALL\nFRUITS',
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              fontSize: 22, // Reduced font size
                              color: AppColors.backGround,
                            ),
                            SizedBox(height: Utils.kSpacingM),
                            MaterialButton(
                              onPressed: () {},
                              color: AppColors.button_1,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: Utils.kSpacingXM,
                                ),
                                child: GoogleFontText(
                                  'CHECK NOW',
                                  fontFamily: 'Poppins',
                                  color: AppColors.backGround,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: Utils.kSpacingM,
                        // right: Utils.kSpacingXM,
                      ),
                      child: Image.asset(
                        'assets/images/fruits.png',
                        width: 205, // Reduced width
                        height: 197, // Reduced height to fit
                        fit: BoxFit.cover, // Use contain to avoid distortion
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          options: CarouselOptions(
            height: 210, // Slightly increased height
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

// class TopPickSection extends StatelessWidget {
//   const TopPickSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       spacing: 10,
//       children: [
//         GoogleFontText(
//           'Top picks for you',
//           fontFamily: 'Quicksand',
//           fontSize: 20,
//           fontWeight: FontWeight.w700,
//         ),
//         CarouselSlider.builder(
//           itemCount: 2,
//           itemBuilder: (context, index, _) {
//             return Container(
//               decoration: BoxDecoration(
//                 color: index == 1 ? AppColors.offertagColor : AppColors.primary,
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 40, left: 20),
//                     child: Column(
//                       children: [
//                         GoogleFontText(
//                           'DISCOUNT\n25% ALL\nFRUITS',
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.w700,
//                           fontSize: 20,
//                           color: AppColors.backGround,
//                         ),
//                         SizedBox(height: Utils.kSpacingM),
//                         MaterialButton(
//                           onPressed: () {},
//                           color: AppColors.button_1,
//                           child: GoogleFontText(
//                             'CHECK NOW',
//                             fontFamily: 'Poppins',
//                             color: AppColors.backGround,
//                             fontSize: 12,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     flex: 4,
//                     child: Image.asset(
//                       'assets/images/fruits.png',
//                       width: 205,
//                       height: 197,
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//           options: CarouselOptions(
//             height: 200,
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

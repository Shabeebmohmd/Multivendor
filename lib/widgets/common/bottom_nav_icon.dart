import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/core/consts/colors.dart';
import 'package:muliti_vendor_app/core/consts/utils.dart';
import 'package:muliti_vendor_app/widgets/common/google_font_style.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.backGround,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        children: [
          buildNavItem('assets/images/bottom/home.png', 'Home'),
          buildNavItem('assets/images/bottom/cart1.png', 'Cart'),
          buildNavItem('assets/images/bottom/order1.png', 'Orders'),
          buildNavItem('assets/images/bottom/account1.png', 'Account'),
        ],
      ),
    );
  }

  Expanded buildNavItem(String image, String label) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, width: 30, height: 30),
          const SizedBox(height: Utils.kSpacingM),
          GoogleFontText(label, fontFamily: 'Quicksand', fontSize: 12),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/consts/colors.dart';
import 'package:muliti_vendor_app/consts/utils.dart';
import 'package:muliti_vendor_app/widgets/common/bottom_nav_icon.dart';
import 'package:muliti_vendor_app/widgets/home_sections/category_section.dart';
import 'package:muliti_vendor_app/widgets/home_sections/craze_deal_section.dart';
import 'package:muliti_vendor_app/widgets/home_sections/fruit_carousel_section.dart';
import 'package:muliti_vendor_app/widgets/home_sections/location_section.dart';
import 'package:muliti_vendor_app/widgets/home_sections/near_store_section.dart';
import 'package:muliti_vendor_app/widgets/home_sections/refer_earn_section.dart';
import 'package:muliti_vendor_app/widgets/home_sections/search_section.dart';
import 'package:muliti_vendor_app/widgets/home_sections/trending_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var referandEarnSection = ReferandEarnSection();
    return Scaffold(
      bottomNavigationBar: BottomNavWidget(),
      backgroundColor: AppColors.backGround,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SafeArea(
            child: Column(
              spacing: Utils.kSpacingM,
              children: [
                LocationSection(),
                SizedBox(height: Utils.kSpacingM),
                SearchSection(context: context),
                SizedBox(height: Utils.kSpacingM),
                CategorySection(),
                FruitCarouselSection(),
                SizedBox(height: Utils.kSpacingM),
                TrendingSection(),
                SizedBox(height: Utils.kSpacingM),
                CrazedealsSection(),
                SizedBox(height: Utils.kSpacingM),
                referandEarnSection,
                SizedBox(height: Utils.kSpacingM),
                NearbyStoreSection(),
                SizedBox(height: Utils.kSpacingM),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

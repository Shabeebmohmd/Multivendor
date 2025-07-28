import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/core/consts/colors.dart';
import 'package:muliti_vendor_app/core/consts/utils.dart';
import 'package:muliti_vendor_app/widgets/common/bottom_nav_icon.dart';
import 'package:muliti_vendor_app/widgets/home_sections/category_section.dart';
import 'package:muliti_vendor_app/widgets/home_sections/craze_deal_section.dart';
import 'package:muliti_vendor_app/widgets/home_sections/top_pick_section.dart';
import 'package:muliti_vendor_app/widgets/home_sections/location_section.dart';
import 'package:muliti_vendor_app/widgets/home_sections/near_store_section.dart';
import 'package:muliti_vendor_app/widgets/home_sections/refer_earn_section.dart';
import 'package:muliti_vendor_app/widgets/home_sections/search_section.dart';
import 'package:muliti_vendor_app/widgets/home_sections/trending_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavWidget(),
      backgroundColor: AppColors.backGround,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Utils.kSpacingXM),
          child: SafeArea(
            // A vertically scrollable column that contains all homepage widgets.
            child: Column(
              spacing: Utils.kSpacingM,
              children: [
                LocationSection(), // Displays current location
                SizedBox(height: Utils.kSpacingM),
                SearchSection(context: context), // Search bar input
                SizedBox(height: Utils.kSpacingM),
                CategorySection(), // Horizontal category list
                TopPickSection(), // Recommended top picks
                SizedBox(height: Utils.kSpacingM),
                TrendingSection(), // Popular/trending items
                CrazedealsSection(), // Limited-time or hot deals
                SizedBox(height: Utils.kSpacingM),
                ReferandEarnSection(), // Referral and rewards section
                SizedBox(height: Utils.kSpacingM),
                NearbyStoreSection(), // Stores near user location
                SizedBox(height: Utils.kSpacingM),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

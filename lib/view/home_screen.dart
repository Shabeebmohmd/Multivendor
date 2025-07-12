import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/consts/colors.dart';
import 'package:muliti_vendor_app/consts/data.dart';
import 'package:muliti_vendor_app/consts/utils.dart';
import 'package:muliti_vendor_app/view/notification_screen.dart';
import 'package:muliti_vendor_app/viewModel/notification_view_model.dart';
import 'package:muliti_vendor_app/widgets/bottom_nav_icon.dart';
import 'package:muliti_vendor_app/widgets/google_Font_Style.dart';
import 'package:muliti_vendor_app/widgets/near_store_product_card.dart';
import 'package:muliti_vendor_app/widgets/trending_product_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavWidget(),
      backgroundColor: AppColors.backGround,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SafeArea(
            child: Column(
              spacing: 10,
              children: [
                _buildLocation(),
                Utils.kSpacingH,
                _buildSearch(context),
                Utils.kSpacingH,
                _buildCategory(),
                _buildCarousel(),
                Utils.kSpacingH,
                _buildTrending(),
                Utils.kSpacingH,
                _buildCrazeDeals(),
                Utils.kSpacingH,
                _buildReferAndEarn(),
                Utils.kSpacingH,
                _buildNearbyStore(),
                Utils.kSpacingH,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _buildNearbyStore() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              GoogleFontText(
                'Nearby stores',
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
              GoogleFontText(
                'See all',
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: AppColors.primary,
              ),
            ],
          ),
        ),
        NearProductCard(),
        Utils.kSpacingSmallH,
        NearProductCard(),
        Utils.kSpacingXL,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Set your radius here
              ),
              onPressed: () {},
              color: AppColors.primary,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 10,
                ),
                child: GoogleFontText(
                  'View all store',
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.backGround,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Container _buildReferAndEarn() {
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
                Utils.kSpacingSmallH,
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
                      Utils.kSpacingSmallW,
                      GoogleFontText(
                        '15% off',
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: AppColors.backGround,
                      ),
                      Utils.kSpacingW,
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

  Column _buildCrazeDeals() {
    return Column(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //header
        GoogleFontText(
          'Craze deals',
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
        CarouselSlider.builder(
          itemCount: 2,
          itemBuilder: (context, index, _) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Image.asset(
                        'assets/images/vegtables.png',
                        width: 133,
                        height: 157.78,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 40),
                      child: Column(
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
                              Utils.kSpacingSmallH,
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
              ),
            );
          },
          options: CarouselOptions(
            height: 160,
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

  Column _buildTrending() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              GoogleFontText(
                'Trending',
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
              GoogleFontText(
                'See all',
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: AppColors.primary,
              ),
            ],
          ),
        ),

        // Horizontal scrolling: each item is a column with 2 identical cards
        SizedBox(
          height: 260, // enough to show 2 cards with padding
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemBuilder: (context, index) {
              return SizedBox(
                width: 290,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    TrendingProductCard(),
                    Utils.kSpacingH,
                    TrendingProductCard(),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  //helper method for building carousel
  Column _buildCarousel() {
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
                          Utils.kSpacingH,
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

  //helper method for building category
  Column _buildCategory() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GoogleFontText(
          'What would you like to do today?',
          fontFamily: 'Quicksand',
          fontSize: 21,
          fontWeight: FontWeight.w700,
        ),
        Utils.kSpacingH,
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.65,
            crossAxisSpacing: 10,
            mainAxisSpacing: 1,
          ),
          itemBuilder: (context, index) {
            return _buildCategoryItems(index);
          },
          itemCount: categoryImages.length,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GoogleFontText(
              'More',
              fontFamily: 'Quicksand',
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
            Icon(Icons.keyboard_arrow_down, color: AppColors.primary),
          ],
        ),
      ],
    );
  }

  //helper method for building search bar area
  Row _buildSearch(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for products/stores',
                  hintStyle: Utils.googleFontStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 14,
                  ),
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search, color: Colors.green, size: 30),
                ),
              ),
            ),
          ),
        ),
        Utils.kSpacingW,
        GestureDetector(
          onTap:
              () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => ChangeNotifierProvider(
                        create: (context) => NotificationViewModel(),
                        child: NotificationView(),
                      ),
                ),
              ),
          child: Image.asset(
            'assets/images/bell_Icon.png',
            width: 30,
            height: 30,
          ),
        ),
        Utils.kSpacingW,
        Image.asset('assets/images/tag.png', width: 30, height: 30),
      ],
    );
  }

  //helper method for building location
  Row _buildLocation() {
    return Row(
      spacing: 5,
      children: [
        Icon(Icons.location_pin, size: 30, color: AppColors.primary),
        GoogleFontText(
          'ABCD, New Delhi',
          fontFamily: 'Quicksand',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        Icon(Icons.keyboard_arrow_down, color: AppColors.primary),
      ],
    );
  }

  //helper method for building items inside the category
  _buildCategoryItems(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Stack(
              children: [
                Card(
                  color: Colors.white,
                  child: Container(
                    constraints: BoxConstraints(minWidth: 50, minHeight: 65),
                    padding: EdgeInsets.all(12),

                    child: Center(
                      child: SizedBox(
                        width: 40,
                        child: Image.asset(categoryImages[index]),
                      ),
                    ),
                  ),
                ),
                if(index<3||index==7)
                    Positioned(
                      left: 20,
                      top: 4,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 1,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.offertagColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: GoogleFontText(
                            '10%off',
                            fontFamily: 'Quicksand',
                            color: AppColors.backGround,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ) 
              ],
            ),
            Container(),
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

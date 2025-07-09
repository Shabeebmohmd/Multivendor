import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/consts/colors.dart';
import 'package:muliti_vendor_app/consts/data.dart';
import 'package:muliti_vendor_app/consts/utils.dart';
import 'package:muliti_vendor_app/view/notification_screen.dart';
import 'package:muliti_vendor_app/viewModel/notification_view_model.dart';
import 'package:muliti_vendor_app/widgets/google_Font_Style.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              spacing: 10,
              children: [
                _buildLocation(),
                Utils.kSpacingH,
                _buildSearch(context),
                Utils.kSpacingH,
                _buildCategory(),
              ],
            ),
          ),
        ),
      ),
    );
  }

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
                index < 3
                    ? Positioned(
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
                    : SizedBox.shrink(),
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

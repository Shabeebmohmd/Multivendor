import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:muliti_vendor_app/app/router/route_names.dart';
import 'package:muliti_vendor_app/core/consts/colors.dart';
import 'package:muliti_vendor_app/core/consts/utils.dart';
import 'package:muliti_vendor_app/modules/notification/view_model/notification_view_model.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key, required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
            decoration: BoxDecoration(
              color: AppColors.greyLight1,
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
        SizedBox(width: Utils.kSpacingM),
        InkWell(
          splashColor: AppColors.red,
          onTap: () {
            final NotificationViewModel model = NotificationViewModel(); // Assign with appropriate constructor or data
            context.goNamed(AppRouteNames.notification, extra: model);
          },
          // () => Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder:
          //         (context) => ChangeNotifierProvider(
          //           create: (context) => NotificationViewModel(),
          //           child: NotificationView(),
          //         ),
          //   ),
          // ),
          child: SizedBox(
            width: Utils.kSpacingXL,
            height: Utils.kSpacingXL,
            child: Image.asset(
              'assets/images/bell_Icon.png',
              width: 30,
              height: 30,
            ),
          ),
        ),
        SizedBox(width: Utils.kSpacingM),
        Image.asset('assets/images/tag.png', width: 30, height: 30),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/core/consts/colors.dart';
import 'package:muliti_vendor_app/core/consts/utils.dart';
import 'package:muliti_vendor_app/modules/notification/view_model/notification_view_model.dart';
import 'package:muliti_vendor_app/widgets/common/google_font_style.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationcViewWidget extends StatelessWidget {
  const NotificationcViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NotificationViewModel>(
      builder: (context, vm, child) {
        if (vm.isLoading) {
          return const Center(
            child: CircularProgressIndicator(color: AppColors.primary),
          );
        } else if (vm.error != null) {
          return Center(child: Text('Error: \\${vm.error}'));
        } else if (vm.notifications.isEmpty) {
          return const Center(child: Text('No notifications found.'));
        }
        return ListView.separated(
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: vm.notifications.length,
          itemBuilder: (context, index) {
            final notification = vm.notifications[index];
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 6.0,
              ),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.backGround1,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      notification.getNotificationIcon(),
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: Utils.kSpacingM),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GoogleFontText(
                            notification.title,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          GoogleFontText(
                            notification.body,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: Utils.kSpacingS),
                          GoogleFontText(
                            timeago.format(
                              DateTime.parse(notification.timestamp),
                            ),
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );

            // return ListTile(
            //   leading: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //       Image.asset(
            //         notification.getNotificationIcon(),
            //         height: 30,
            //         width: 30,
            //       ),
            //     ],
            //   ),
            //   title: GoogleFontText(
            //     notification.title,
            //     fontFamily: 'Quicksand',
            //     fontWeight: FontWeight.w700,
            //     fontSize: 18,
            //   ),
            //   subtitle: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       GoogleFontText(
            //         notification.body,
            //         fontFamily: 'Quicksand',
            //         fontWeight: FontWeight.w400,
            //         fontSize: 14,
            //       ),
            //       SizedBox(height: Utils.kSpacingS),
            //       GoogleFontText(
            //         timeago.format(DateTime.parse(notification.timestamp)),
            //         fontFamily: 'Quicksand',
            //         fontWeight: FontWeight.w400,
            //         fontSize: 12,
            //       ),
            //     ],
            //   ),
            // );
          },
        );
      },
    );
  }
}

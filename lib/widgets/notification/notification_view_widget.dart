import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/consts/colors.dart';
import 'package:muliti_vendor_app/consts/utils.dart';
import 'package:muliti_vendor_app/viewModel/notification_view_model.dart';
import 'package:muliti_vendor_app/widgets/common/google_font_style.dart';
import 'package:provider/provider.dart';

class NotificationcViewWidget extends StatelessWidget {
  const NotificationcViewWidget({
    super.key,
  });

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
            return ListTile(
              leading: Image.asset(
                notification.getNotificationIcon(),
                height: 30,
                width: 30,
              ),
              title: GoogleFontText(
                notification.title,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoogleFontText(
                    notification.body,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                  SizedBox(height: Utils.kSpacingS),
                  GoogleFontText(
                    notification.timestamp,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

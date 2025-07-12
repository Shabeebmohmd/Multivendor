import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/consts/colors.dart';
import 'package:muliti_vendor_app/consts/utils.dart';
import 'package:muliti_vendor_app/widgets/google_font_style.dart';
import 'package:provider/provider.dart';
import '../viewModel/notification_view_model.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<NotificationViewModel>(
        context,
        listen: false,
      ).fetchNotifications();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 101,
        shadowColor: AppColors.black,
        elevation: 5,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_circle_left_sharp,
            size: 35,
            color: AppColors.primary,
          ),
        ),
        title: const GoogleFontText(
          'Notifications',
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
      ),
      body: Consumer<NotificationViewModel>(
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
                    Utils.kSpacingSmallH,
                    GoogleFontText(
                      notification.timestamp,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ],
                ),
                // trailing: Text(notification.timestamp),
              );
            },
          );
        },
      ),
    );
  }
}

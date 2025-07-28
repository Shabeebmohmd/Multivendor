import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/core/consts/colors.dart';
import 'package:muliti_vendor_app/widgets/common/google_font_style.dart';
import 'package:muliti_vendor_app/widgets/notification/notification_view_widget.dart';
import 'package:provider/provider.dart';
import '../view_model/notification_view_model.dart';

class NotificationView extends StatefulWidget {
  final NotificationViewModel? model;
  const NotificationView({super.key, this.model});

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
        backgroundColor: AppColors.backGround,
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
      body: NotificationcViewWidget(),
    );
  }
}

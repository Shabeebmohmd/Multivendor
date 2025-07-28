import 'package:flutter/material.dart';
import 'package:muliti_vendor_app/app/app.dart';
import 'package:provider/provider.dart';
import 'modules/notification/view_model/notification_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NotificationViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}



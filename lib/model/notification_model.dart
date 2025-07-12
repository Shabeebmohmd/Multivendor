import 'package:flutter/material.dart';
class NotificationModel {
  final String image;
  final String title;
  final String body;
  final String timestamp;

  NotificationModel({
    required this.image,
    required this.title,
    required this.body,
    required this.timestamp,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      image: json['image'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      timestamp: json['timestamp'] as String,
    );
  }

  getNotificationIcon() {
    if (image.contains('order_assigned')) {
      return 'assets/images/notification/order_assigned.png';
    } else if (image.contains('order_delivered')) {
      return 'assets/images/notification/order_delivered.png';
    } else if (image.contains('order_cancelled')) {
      return 'assets/images/notification/order_cancelled.png';
    } else if (image.contains('promotion_marketplace')) {
      return 'assets/images/notification/promotion_marketplace.png';
    } else if (image.contains('promotion_notify')) {
      return 'assets/images/notification/promotion_nootify.png';
    } else if (image.contains('support_personnel')) {
      return 'assets/images/notification/support_peersonnel.png';
    }
    return Icons.notifications;
  }
}

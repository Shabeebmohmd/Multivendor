import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:muliti_vendor_app/core/consts/data.dart';
import '../model/notification_model.dart';

class NotificationService {
  static Future<List<NotificationModel>> fetchNotifications() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final decoded = json.decode(response.body);
      List<dynamic> data;
      if (decoded is List) {
        data = decoded;
      } else if (decoded is Map && decoded['data'] is List) {
        data = decoded['data'];
      } else {
        throw Exception('API did not return a List or a Map with a data List.');
      }
      return data.map((json) => NotificationModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load notifications');
    }
  }
}

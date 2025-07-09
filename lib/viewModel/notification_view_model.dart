import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../model/notification_model.dart';

class NotificationViewModel extends ChangeNotifier {
  List<NotificationModel> _notifications = [];
  bool _isLoading = false;
  String? _error;

  List<NotificationModel> get notifications => _notifications;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchNotifications() async {
    _isLoading = true;
    _error = null;
    notifyListeners();
    try {
      _notifications = await compute(_fetchNotifications, null);
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  static Future<List<NotificationModel>> _fetchNotifications(dynamic _) async {
    const url =
        'https://raw.githubusercontent.com/sayanp23/test-api/main/test-notifications.json';
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

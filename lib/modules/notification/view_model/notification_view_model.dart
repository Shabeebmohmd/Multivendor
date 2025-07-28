import 'package:flutter/foundation.dart';
import 'package:muliti_vendor_app/modules/notification/service/notification_service.dart';
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
    return NotificationService.fetchNotifications();
  }
}

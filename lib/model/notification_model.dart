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
}

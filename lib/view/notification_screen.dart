import 'package:flutter/material.dart';
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
      appBar: AppBar(title: const Text('Notifications')),
      body: Consumer<NotificationViewModel>(
        builder: (context, vm, child) {
          if (vm.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (vm.error != null) {
            return Center(child: Text('Error: \\${vm.error}'));
          } else if (vm.notifications.isEmpty) {
            return const Center(child: Text('No notifications found.'));
          }
          return ListView.builder(
            itemCount: vm.notifications.length,
            itemBuilder: (context, index) {
              final n = vm.notifications[index];
              return ListTile(
                leading: Image.network(
                  n.image,
                  width: 50,
                  height: 50,
                  errorBuilder: (c, e, s) => const Icon(Icons.image),
                ),
                title: Text(n.title),
                subtitle: Text(n.body),
                trailing: Text(n.timestamp),
              );
            },
          );
        },
      ),
    );
  }
}

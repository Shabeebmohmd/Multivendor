import 'package:go_router/go_router.dart';
import 'package:muliti_vendor_app/app/router/route_names.dart';
import 'package:muliti_vendor_app/modules/home/view/home_screen.dart';
import 'package:muliti_vendor_app/modules/notification/view/notification_screen.dart';
import 'package:muliti_vendor_app/modules/notification/view_model/notification_view_model.dart';
import 'package:provider/provider.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: AppRouteNames.home,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/notification',
      name: AppRouteNames.notification,
      builder: (context, state) {
        final notification = state.extra as NotificationViewModel;
        return ChangeNotifierProvider(
          create: (_) => NotificationViewModel(),
          child: NotificationView(model: notification,),
        );
      },
    ),
  ],
);

import 'package:deep_link_flutter/views/pages/detail_page.dart';
import 'package:deep_link_flutter/views/pages/home_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._privateConstructor();

  static final AppRouter _instance = AppRouter._privateConstructor();

  static AppRouter get instance => _instance;

  static GoRouter get routerConfig => GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (_, __) => const HomePage(),
            routes: [
              GoRoute(path: ':id', builder: (_, __) => const DetailPage()),
            ],
          ),
        ],
      );
}

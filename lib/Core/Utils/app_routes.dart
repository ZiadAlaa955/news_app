import 'package:go_router/go_router.dart';
import 'package:news_app/Features/Home/Presentation/Views/category_view.dart';
import 'package:news_app/Features/Home/Presentation/Views/home_view.dart';

abstract class AppRoutes {
  static String kCategoryView = '/categoryView';
  static String kHomeView = '/';

  static GoRouter routetr = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kCategoryView,
        builder: (context, state) => CategoryView(
          categoryName: state.extra as String,
        ),
      )
    ],
  );
}

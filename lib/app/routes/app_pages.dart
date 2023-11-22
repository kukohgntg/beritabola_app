import 'package:get/get.dart';

import '../modules/article/bindings/article_binding.dart';
import '../modules/article/views/article_view.dart';
import '../modules/discover/bindings/discover_binding.dart';
import '../modules/discover/views/discover_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ARTICLE,
      page: () => ArticleView(
        title: '',
        description: '',
        publishedAt: '',
        author: '',
        imageUrl: '',
        content: '',
      ),
      binding: ArticleBinding(),
    ),
    GetPage(
      name: _Paths.DISCOVER,
      page: () => DiscoverView(),
      binding: DiscoverBinding(),
    ),
  ];
}

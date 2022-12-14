import 'package:get/get.dart';

import 'package:slicing_movie_streaming/app/modules/home/bindings/home_binding.dart';
import 'package:slicing_movie_streaming/app/modules/home/views/home_view.dart';
import 'package:slicing_movie_streaming/app/modules/login/bindings/login_binding.dart';
import 'package:slicing_movie_streaming/app/modules/login/views/login_view.dart';
import 'package:slicing_movie_streaming/app/modules/search/bindings/search_binding.dart';
import 'package:slicing_movie_streaming/app/modules/search/views/search_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.search,
      page: () => const SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
  ];
}

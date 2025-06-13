import 'package:bookly/features/home/data/presentation/views/home_view.dart';
import 'package:bookly/features/home/data/presentation/views/book_details_view.dart';
import 'package:bookly/features/presntation/view/wedget/splash_view.dart';
import 'package:bookly/features/search/presntition/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String KHomeView = '/homeView';
  static String KBookDetailsView = '/bookDetailsView';
  static String KSearchView = '/searchview';
  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: KHomeView,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: KBookDetailsView,
      builder: (BuildContext context, GoRouterState state) {
        return const BookDetailsview();
      },
    ),
    GoRoute(
      path: KSearchView,
      builder: (BuildContext context, GoRouterState state) {
        return const SearchView();
      },
    ),
  ]);
}

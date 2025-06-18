import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/presentation/view_models/book_model/book_model.dart';
import 'package:bookly/features/home/data/presentation/views/home_view.dart';
import 'package:bookly/features/home/data/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/presntation/manger/similar_Books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/presntation/view/wedget/splash_view.dart';
import 'package:bookly/features/search/presntition/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    // GoRoute(
    //   path: KBookDetailsView,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const BookDetailsview();
    //   },
    // ),
    GoRoute(
      path: KSearchView,
      builder: (BuildContext context, GoRouterState state) {
        return const SearchView();
      },
    ),
    GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepo>()),
            child: BookDetailsview(
              bookModel: state.extra as BookModel,
            ))),
  ]);
}

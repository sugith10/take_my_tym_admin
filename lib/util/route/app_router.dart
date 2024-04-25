import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:take_my_tym_admin/util/route/page_names.dart';
import 'package:take_my_tym_admin/presentation/pages/error_page.dart';
import 'package:take_my_tym_admin/presentation/pages/main_page.dart';
import 'package:take_my_tym_admin/presentation/pages/login_page/log_in_page.dart';

final GoRouter router = GoRouter(
  errorBuilder: (context, state) => const ErrorPage(),
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => const LogInPage(),
      routes: <RouteBase>[
        GoRoute(
          path: PageName.login,
          pageBuilder: (context, state) => 
          buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const LogInPage(),
          ),
        ),
        GoRoute(
          path: PageName.home,
          pageBuilder: (context, state) => 
          buildPageWithDefaultTransition<void>(
              context: context, state: state, child: const
               MainScreen()),
        )
      ],
    ),
  ],
);

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
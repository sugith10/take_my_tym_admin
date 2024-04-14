import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:take_my_tym_admin/core/view/pages/error_page.dart';
import 'package:take_my_tym_admin/core/view/pages/log_in_page.dart';

final GoRouter router = GoRouter(
  errorBuilder: (context, state) => const ErrorPage(),
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => const LogInPage(),
      routes: <RouteBase>[
        GoRoute(
          path: 'login',
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const LogInPage(),
          ),
        ),
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
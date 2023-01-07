import 'package:dpfit/UI/ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigateRoute {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: 'instagram',
            builder: (context, state) => const InstagramMain(),
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(
        key: state.pageKey,
        child: Scaffold(
          body: Center(
            child: Text(
              state.error.toString(),
            ),
          ),
        ),
      );
    },
  );
}

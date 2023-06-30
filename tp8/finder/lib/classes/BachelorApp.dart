// ignore_for_file: file_names

import 'package:finder/classes/screens/BachelorFavoritesScreen.dart';
import 'package:finder/classes/screens/BachelorMaster.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class BachelorApp extends StatelessWidget {
  BachelorApp({super.key});

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const BachelorMaster(),
      ),
      GoRoute(
        path: '/favorites',
        builder: (context, state) => const BachelorsFavoritesScreen(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'finder',
    );
  }
}

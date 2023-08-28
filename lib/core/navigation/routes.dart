import 'package:go_router/go_router.dart';

import 'package:ecommerce/core/navigation/route_names.dart';
import 'package:ecommerce/features/home/presentation/home_screen.dart';
import 'package:ecommerce/features/sell/presentation/add_to_inventory_screen.dart';
// import 'package:ecommerce/features/sell/presentation/widgets/shirt_size_screen.dart';

GoRouter get routes => _routes;

final GoRouter _routes = GoRouter(
  routes: [
    GoRoute(
      name: RouteNames.home,
      path: '/',
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          name: RouteNames.sell,
          path: 'addToInventory',
          builder: (context, state) => const AddToInventory(),
        ),
      ],
    )
  ],
);

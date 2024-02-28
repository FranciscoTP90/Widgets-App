import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(path: '/', builder: (_, __) => const HomeScreen()),
    GoRoute(path: '/buttons', builder: (_, __) => const ButtonsScreen()),
    GoRoute(path: '/cards', builder: (_, __) => const CardsScreen()),
  ],
);

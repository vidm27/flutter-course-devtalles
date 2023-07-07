import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.nameRoute,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
        path: '/buttons',
        name: ButtonsScreen.nameRoute,
        builder: (context, state) =>
            const ButtonsScreen()), // Esto permite realizar la configuracion de rutas o endpoint
    GoRoute(
        path: '/cards',
        name: CardsScreen.nameRoute,
        builder: (context, state) => const CardsScreen()),
    GoRoute(
        path: '/progress',
        name: ProgressScreen.name,
        builder: (context, state) => const ProgressScreen()),
    GoRoute(
        path: '/snackbar',
        name: SnackbarScreen.name,
        builder: (context, state) => const SnackbarScreen())
  ],
);

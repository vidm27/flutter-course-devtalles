import 'package:go_router/go_router.dart';
import 'package:miscelaneos/presentation/screens/screen.dart';

final router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
  GoRoute(
      path: '/permissions',
      builder: (context, state) => const PermissionsScreen()),
  GoRoute(
      path: '/gyroscope',
      builder: (context, state) => const GyroscopeScreen()),
  GoRoute(
      path: '/accelerometer',
      builder: (context, state) => const AcelerometerScreen()),
  GoRoute(
      path: '/magnetometer',
      builder: (context, state) => const MagnetometerScreen()),
  GoRoute(
      path: '/gyroscope-ball',
      builder: (context, state) => const GyroscopeBallScreen()),
  GoRoute(
      path: '/compass',
      builder: (context, state) => const CompassScreen()),
  
]);

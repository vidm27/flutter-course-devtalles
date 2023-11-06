import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miscelaneos/presentation/providers/providers.dart';

class PermissionsScreen extends StatelessWidget {
  const PermissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Permisos'),
      ),
      body: const _PermissionView(),
    );
  }
}

class _PermissionView extends ConsumerWidget {
  const _PermissionView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final permissions = ref.watch(permissionsProvider);
    return ListView(
      children: [
        CheckboxListTile(
          value: permissions.cameraGranted,
          onChanged: (_) {
            ref.read(permissionsProvider.notifier).requestCameraAcess();
          },
          title: const Text('Camara'),
          subtitle: Text('${permissions.camera}'),
          
        ),
        CheckboxListTile(
          value: permissions.locationGranted,
          onChanged: (_) {
            ref.read(permissionsProvider.notifier).requestLocationAccess();
          },
          title: const Text('Location'),
          subtitle: Text('${permissions.location}'),
          
        ),
        CheckboxListTile(
          value: permissions.sensorsGranted,
          onChanged: (_) {
            ref.read(permissionsProvider.notifier).requestSensorAccess();
          },
          title: const Text('Sensors'),
          subtitle: Text('${permissions.location}'),
          
        ),
        CheckboxListTile(
          value: permissions.locationGranted,
          onChanged: (_) {
            ref.read(permissionsProvider.notifier).requestLocationAccess();
          },
          title: const Text('Location'),
          subtitle: Text('${permissions.location}'),
          
        ),
      ],
    );
  }
}

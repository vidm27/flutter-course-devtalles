import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_item.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListView.builder(
        itemCount: appMenuItems.length,
        prototypeItem: ListTile(title: Text(appMenuItems.first.title)),
        itemBuilder: (context, index) {
          final menuItem = appMenuItems[index];

          return ListTile(
            title: Text(menuItem.title),
            subtitle: Text(menuItem.subTitle),
            leading: Icon(menuItem.icon),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: colors.primary,
            ),
            onTap: () {
              // Esto funciona con el go router
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => const ButtonsScreen(),
              //   ),
              // );
              // Navigator.pushNamed(context, menuItem.link);
            context.push(menuItem.link);
            },
          );
        });
  }
}

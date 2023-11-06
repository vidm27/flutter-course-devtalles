import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:miscelaneos/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(slivers: [
          SliverAppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    context.push('/permissions');
                  },
                  icon: const Icon(Icons.settings))
            ],
            title: const Text('Miscelaneos'),
          ),
          const MainMenu()
        ]),
      ),
    );
  }
}

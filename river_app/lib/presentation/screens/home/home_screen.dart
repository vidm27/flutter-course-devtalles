import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiveApp'),
      ),
      body: const _HomeScreenView(),
    );
  }
}

class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _CustomListTile(title: 'Provider', subTitle: 'provider state simple', location: '/state-provider'),
        _CustomListTile(title: 'Future Provider', subTitle: 'future provider state simple', location: '/future-provider'),
        _CustomListTile(title: 'Stream Provider', subTitle: 'stream provider state simple', location: '/stream-provider'),
        _CustomListTile(title: 'State Notifier Provider', subTitle: 'State notifier provider simple', location: '/state-notifier-provider'),
      ],
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String location;
  const _CustomListTile(
      {required this.title,
      required this.subTitle,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => context.push(location),
    );
  }
}

import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  static const String nameRoute = 'cards_screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: const Placeholder(),
    );
  }
}

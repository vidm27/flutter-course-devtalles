import 'package:flutter/material.dart';

class CompassScreen extends StatelessWidget {
  const CompassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acelerometro'),
      ),
      body: const Center(
        child: Text('Hola Acelerometro'),
      ),
    );
  }
}

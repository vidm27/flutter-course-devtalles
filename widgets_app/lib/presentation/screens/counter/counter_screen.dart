import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  static const name = 'counter_screen'; //Nombre comun de ruta

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Screen')),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: const Icon(Icons.exposure_plus_1_sharp)),
      body: Center(
        child: Text('Valor: 10', style: Theme.of(context).textTheme.titleLarge),
      ),
    );
  }
}

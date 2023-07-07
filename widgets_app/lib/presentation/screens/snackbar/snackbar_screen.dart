import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen'; //Nombre comun de ruta

  const SnackbarScreen({super.key});
  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars(); // limpiamos los snackbars

    final snacBar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction( // configuramos el snackbar action
        label: 'Ok!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2), // configuramos la duracion
    );
    ScaffoldMessenger.of(context).showSnackBar(snacBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbar y Dialogos')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // ScaffoldMessenger.of(context).showSnackBar(
          //   const SnackBar(content: Text('Hola mundo Snackbar'))
          // );
          showCustomSnackbar(context);
        },
        label: const Text('Mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen'; //Nombre comun de ruta

  const SnackbarScreen({super.key});
  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars(); // limpiamos los snackbars

    final snacBar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(
        // configuramos el snackbar action
        label: 'Ok!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2), // configuramos la duracion
    );
    ScaffoldMessenger.of(context).showSnackBar(snacBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false, // Con esta opcion obligamos a la persona que utilice los action que proporcionamos
        builder: (context) => AlertDialog(
              title: const Text('Esta seguro?'),
              content: const Text(
                  'Elit laborum minim deserunt adipisicing irure officia quis reprehenderit voluptate. Ad amet do Lorem occaecat magna eiusmod proident cillum. Irure ipsum ipsum sint eiusmod nulla sunt et aliquip. Culpa proident minim ullamco quis labore. Ut ullamco nulla cillum elit irure mollit id aute irure officia duis duis laboris. Anim ad Lorem dolor amet aliqua ad occaecat dolore sit irure amet sit occaecat.'),
              actions: [
                TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: const Text('Cancelar')),
                FilledButton(onPressed: () {}, child: const Text('Aceptar'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbar y Dialogos')),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        FilledButton.tonal(
            onPressed: () {
              showAboutDialog(context: context, children: [
                const Text(
                    'Magna amet commodo cupidatat occaecat minim adipisicing sit occaecat ipsum. Consequat cupidatat cupidatat velit aliqua adipisicing consequat amet amet. Commodo aliquip do sunt mollit cillum ea nulla fugiat commodo in esse amet occaecat adipisicing. Nostrud cillum qui nulla enim incididunt mollit nisi aute elit.')
              ]);
            },
            child: const Text('Licencias usadas')),
        FilledButton.tonal(
            onPressed: () {
              openDialog(context);
            },
            child: const Text('Mostrar dialogos'))
      ])),
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

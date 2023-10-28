void main(List<String> args) async {
  print('Incio del programa');
  // httpGet('https://fernando-herrera')
  // .then((value) => print(value))
  // .catchError((error) {
  //   print('Error: $error');
  // });
  try {
    final value = await httpGet3('url');
    print(value);
  } on Exception catch(err){ // Me permite reaccionar segun el tipo de excepcion
    print('Tenemos una exception: $err');
  } catch (err) {
    print('Tenemos un error: $err');
  }finally{
    print('Fin del try y catch');
  }
  print('Fin de programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la peticion http';
  });
}

Future<String> httpGet2(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error en la peticion'; // Es una excepcion no controlada
  // return 'Terminamos un valor de la peticion';
}

Future<String> httpGet3(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('No hay parametros en el URL');
  // return 'Terminamos un valor de la peticion';
}
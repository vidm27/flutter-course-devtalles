# Seccion 2

Cuando agregamos una nueva ruta a la aplicacion, debemos realizar un full-restart de la aplicacion para que se reflejen los cambios, ya que el go_router esta fuera del flujo de la aplcacion.

Cuando llamamos una propiedad dentro del metodo build y la usamos dentro del el, el widget donde se usa no puede ser constante, ya que en tiempo de ejeucicion es donde se connstruye.
```dart
Center(
        child: Text('David Moran', style: titleStyle,),
      ),
```
- StateProvider: Es una variable que puede ser actualizada en cualquier parte de la aplicacion, y cualquiera que este escuchando esta variable tambien vera esos cambios.

Para utilizar cualquiera de los providers de riverpod, los **statelessWidget** deben ser cambiado por **ConsumerWidget**,
el cual tendra una referencia a `ProviderScope` el cual tiene todos los providers se encuentren. Estos providers son cargados bajo demanda, sino se utilizan son se llaman.

Cuando se trabaja con riverpod y necesita utilizar el estado del provider dentro de un metodo o funcion, se aconseja que utilices `ref.read()` ya que nos permite leer solo el provider que especificamos.

Para cambiar el valor de un provider usando el **read()**, debes hacerlo mediante `(randomNameProvider.notifier).state` la funcion **notifier** que notifica a otros providers y widgets que hubo un cambio en el provider, para combinarce con el `state`.

Para poder acceder al valor previo y actualizar el provider debomos utilizar **update**.
```dart
ref
.read(randomNameProvider.notifier)
.update((state) => state.toLowerCase());
```

El **HotReload** no destruye los providers.

`ref.invalidate(randomNameProvider);` Con esto volvemos a llamar la creacion del providers. Funcionando con todos los providers de riverpod

**Cuando el provider esta creado no debe volver a llamarse**: 

**Modificadores riverpod**

- .family: a la hora de crear el providers se requiere mandar un argumento para crear el provider. Como basados en un id, valor especifico, etc. Se usa en el Future provider
- .autoDispose: le dice a riverpod que no utilice mas el provider.

Cuando queremos manejar estados pequeños de ciertas configuraciones podemos combianar varios providers para gestionar los estados.

#### Comunicar diferentes provider

```dart
final pokemonIdProvider = StateProvider<int>((ref) {
  return 1;
});

final pokemonNameProvider = FutureProvider<String>((ref) async {
  final id = ref.watch(pokemonIdProvider);
  final name = await PokmeonService.getPokemonName(id);
  return name;
});
```
Esta es la forma de comunicar provider entre si, pero aqui el detalle es que no se mantiene el estado de la peticiones previas, solo el de la actual. 

#### StreamProvider
Son utiles para escuchar los websockets, parte muy ruidosa de una aplicacion


### StateNotifierProvider

Con esta necesito crear el notifier de forma manual y ademas necesito especificar cual es el tipo de data que va fluir por notifier. La ventaja de esto que puedo crear metodos que interactuen directamente en la clase para cambiar el estado de objetos. Donde el `state` es el estado del objeto actual.

Se recomienda que para realizar las modificaciones del state, se debe hacer en nuestro StateNotifier.

**paqueste de terceros primero, luego nuestros paquetes.**
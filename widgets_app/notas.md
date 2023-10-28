### Como navegar por las pantallas
Debe utilizar el Navigator para realizar la navegacio
- Al utilizar push voy superponiendo pantallas como si utilizar un pila, en el caso de replace reemplazo la posicion del la pantalla anterio
```
 Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ButtonsScreen(),
                ),
              );
```

### Cual es el problema de utilizar rutas nombras en flutter
```
routes: {
      '/': (context) => HomeScreen(),
      '/details': (context) => DetailScreen(),
    },
```

Es muy dificil realizar navegacion pasando path paramether en las pantallas.

Although named routes can handle deep links, the behavior is always the same and can’t be customized. When a new deep link is received by the platform, Flutter pushes a new Route onto the Navigator regardless where the user currently is.

Flutter also doesn’t support the browser forward button for applications using named routes. For these reasons, we don’t recommend using named routes in most applications.

### Utiliza go_router
https://pub.dev/documentation/go_router/latest/topics/Get%20started-topic.html

Las configuracion del go_router debe ir en config.

### Archivos de Barril?
- Investigar que es un archivo de barril?

La diferencia entre el stack y la columna, esque la stack coloca los widget una arriba de otro.

### PageController
- Una buena practica esque cuando tienes que mostrar un widget vacio 0 pixeles, utiliza un SizeBox()
- Recuerda que puedes ponder condicionales entre widgets
- Buena practica: utiliza el dispose para que se limpien los listener.

Con esta condicion le dice al pageview que cuando ya este por la mitad del slide, se cumpla la condicion.
```
if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
```

## Riverpood - Introduccion
No se recomienda utilizar watch en metodos, ya que es una pesima practica, ya que puede llevar a efectos raros, ya que dentor del metodo onPressed, no se renderiza nada.  Por eso se debe utilizar un read.

Esto es un estado inmutable en riverpod, el cual se utiliza para valores que no van a cambiar mas a lo largo de la aplicacion. En otras palabras, es para mantener estado de valores inmutables
```
// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);
```
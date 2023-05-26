# Yes No App
Cuando tenemos clases o variables que tiene guion bajo, solo se pueden utilizar en el archivo donde se han construido.

- Aserciones: podemos utillizar para hacer que se cumplan las normas de los contratos establecidos.

- Los widgetes deben ser facil de mantener y facil de leer
- Deben tener una unica responsabilidad.

La capa de presentation va ser relacionada a lo va ver el usuario.

### Widgets
- **Expanded**: permite expandir el widget hijo a todo el espacio que el padre le de.
- **ListView.builder(itemBuilder: itemBuilder)**: flutter en tiempo de ejecucion ejecuta para construir los widgets. En otras palabras los widgets se crean bajo demanda.

"TRATA QUE TUS WIDGETS SEAN FACIL DE LEER"

### Las tres partes de flutter
La construccion de la logica de negocio, la conexion de la logica de negocio, la creacion del diseno de la aplicacion

### Formulario
Como mantengo el foco en un elemento?
- Uso el FocusNode

# Parte 2
Temas puntuales de la sección
En esta sección 6 nos enfocaremos en trabajar la lógica de negocio de nuestra aplicación, en pocas palabras haremos funcionar el diseño hecho en la sección aterior.

Puntualmente veremos:
- Gestores de estado
- Mappers
- Peticiones HTTP
- Dio
- Paquetes
- Funciones que retornan valores como callbacks
- Scroll
- Provider
- Y más cosas

Al finalizar la sección tendremos una buena base de como alojar el estado fuera de los widgets y que los widgets se actualicen y tomen la información que necesitan del gestor de estado.

### Entidad Atomica
Lo mas puro que necesita mi aplicación para trabajar.

Fernando define los requerimientos de los mensajes:
1. Poder tener texto 
2. Poder de forma opcional enviar imagenes
3. Identificar cuales son mios y cuales son de ellos

**Domain**: Todo lo que este aqui debe ser codigo puro de Dart.

**Entities**: Son las unidades atomicas que nosotros necesitamos para que nuestra app funcione

**Gestores de Estados**: Son un puente entre los diferentes componetes de la aplicación.

**ChangeNotifier**: Indica que esta clase puede notificar a otros widgets el cambio de estado.

## Provider
Me permite tener los ChangeNotifier a cierto nivel de la aplicación, donde solo los widgets hijos van a tener
acceso a ese provider.

- Si tenemos un widget que funciona a lo largo de la aplicacion debemos colocar el provider en el punto mas alto de la applicacion

Que indica esta instruccion?
ChangeNotifierProvider(create: (_) => ChatProvider()): Creamos nuestro ChatProvider a nivel global de la aplicación, donde cada hijo tiene acceso a modificar el ChatProvider. El guion bajo es el BuildContext.

-----
### Como hago que mi widget pueda ser reutilizable o flexible para invocar un metodo?

Debo poder emitir el valor que la caja de texto que envia o genera, esto lo hacemos mediante *ValueChanged<String>* que es un callback que si regresa un valor. Este metodo nos permite llamar la funcion proveida por el padre.

`onValue(textValue);`

- Como hago que el scroll se mueva al final cuando envio un mensaje?

----
Mappers en Flutter


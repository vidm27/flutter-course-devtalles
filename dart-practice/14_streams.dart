void main(List<String> args) {
  streamNumbers().listen((event) {print('Stream value: $event');}); // los streams solo funcionan cuando hay alguin escuchando

}

Stream<int> streamNumbers(){ // le digo que debe fluir a traves de mi flujo 
  return Stream.periodic(const Duration(seconds: 1), (value){
    // print('Desde periodic $value');
    return value;
  }).take(5);
  //Take le dice al streams cuantas emisiones va hacer
}
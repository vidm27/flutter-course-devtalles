void main(List<String> args) {
  emitNumber().listen((int event) {
    print('Stream value: $event');
  });
}

//async*: simboliza que la funcion regresa un Streams

Stream<int> emitNumber() async* {
  final valuesToEmit = [1,2,3,4,5];
  for(int i in valuesToEmit){
    await Future.delayed(const Duration(seconds: 1));
    yield i; // le indica que tenga una valor a la emision
  }
}

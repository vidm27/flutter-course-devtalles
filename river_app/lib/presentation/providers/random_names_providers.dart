import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/helpers/random_generator.dart';

final nameStreamProvider = StreamProvider.autoDispose<String>((ref) async* {
  await for (final name in RandomGenerator.randomNamesStream()) {
    // if(name.length > 5){
    //   print('Invalidando');
    //   ref.invalidateSelf();
    // }
    yield name;
  }
});
// final nameStreamProvider = StreamProvider<List<String>>((ref) async* {
//   await Future.delayed(const Duration(seconds: 2));
//   yield [];
//   await Future.delayed(const Duration(seconds: 2));
//   yield ['Hola'];
//   await Future.delayed(const Duration(seconds: 2));
//   yield ['Hola', 'como esta'];
//   await Future.delayed(const Duration(seconds: 2));
//   yield ['Juan', 'Pedro', 'Lucas'];
// });

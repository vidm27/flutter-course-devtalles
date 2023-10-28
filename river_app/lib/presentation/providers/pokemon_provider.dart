import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/helpers/pokemon_service.dart';

final pokemonIdProvider = StateProvider<int>((ref) {
  return 1;
});

final pokemonNameProvider = FutureProvider<String>((ref) async {
  final id = ref.watch(pokemonIdProvider);
  final name = await PokmeonService.getPokemonName(id);
  return name;
});

// final pokemonNameProvider = FutureProvider.family<String, int>((ref, id) async {
//   final name = await PokmeonService.getPokemonName(id);
//   return name;
// });

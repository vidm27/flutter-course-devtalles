// Provider de solo lectura

import 'package:cinemapedia/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Este respository es inmutable, donde proporciona la informacion a los demas provider
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImple(datasource: MoviedbDatasource());
});
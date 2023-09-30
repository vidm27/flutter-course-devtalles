import 'package:cinemapedia/domain/entities/movie.dart';

// Este nos permite cambiar los respositorio o nuestras fuentes de datos
abstract class MovieDatasource {
  Future<List<Movie>> getNowPlaying({int page = 1});
}

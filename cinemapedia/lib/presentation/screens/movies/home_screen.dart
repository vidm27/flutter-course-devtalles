import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  static String name = 'homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: _HomeView(),
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView({
    super.key,
  });

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();

    // con esto especifico que quiero el notifier no el valor o el estado
    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    // en esta leo el estado

    final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);
    final slideShowMovies = ref.watch(moviesSlideShowProvider);

    if (slideShowMovies.isEmpty) return const CircularProgressIndicator();

    return Column(
      children: [
        const CustomAppbar(),
        MoviesSlideShow(movies: slideShowMovies),
        MovieHorizontalListView(
          movies: nowPlayingMovies,
          title: 'En Cines',
          subTitle: 'Lunes 20',
        ),
      ],
    );
  }
}

// Expanded(
      //   child: ListView.builder(
      //     itemCount: nowPlayingMovies.length,
      //     itemBuilder: (context, index) {
      //       final movie = nowPlayingMovies[index];
      //       return ListTile(
      //         title: Text(movie.title),
      //       );
      //     }),
      // )
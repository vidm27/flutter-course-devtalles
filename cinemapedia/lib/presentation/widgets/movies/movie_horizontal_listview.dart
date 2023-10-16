import 'package:animate_do/animate_do.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/helpers/human_formarts.dart';
import 'package:flutter/material.dart';

class MovieHorizontalListView extends StatelessWidget {
  final List<Movie> movies;
  final String? title;
  final String? subTitle;
  final VoidCallback? loadNextPage;

  const MovieHorizontalListView(
      {super.key,
      required this.movies,
      this.title,
      this.subTitle,
      this.loadNextPage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Column(
        children: [
          if (title != null || subTitle != null)
            _Title(
              title: title,
              subtitle: subTitle,
            ),
          Expanded(
              child: ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return _Slide(movie: movies[index]);
            },
            scrollDirection: Axis.horizontal,
            physics:
                const BouncingScrollPhysics(), // para que se comporte igual en IOS y Android
          ))
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String? title;
  final String? subtitle;
  const _Title({super.key, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(children: [
        if (title != null)
          Text(
            title!,
            style: titleStyle,
          ),
        const Spacer(),
        if (subtitle != null)
          FilledButton.tonal(
            onPressed: () {},
            style: const ButtonStyle(visualDensity: VisualDensity.compact),
            child: Text(subtitle!),
          )
      ]),
    );
  }
}

class _Slide extends StatelessWidget {
  final Movie movie;
  const _Slide({required this.movie});

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                movie.posterPath,
                fit: BoxFit.cover,
                width: 150,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress != null) {
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    );
                  }

                  return FadeIn(child: child);
                },
              ),
            ),
          ),

          //* TITLE
          SizedBox(
            width: 150,
            child: Text(
              movie.title,
              maxLines: 2,
              style: textStyles.titleSmall,
            ),
          ),

          // * Rating
          SizedBox(
            width: 150,
            child: Row(
              children: [
                Icon(
                  Icons.star_half_outlined,
                  color: Colors.amber.shade800,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '${movie.voteAverage}',
                  style: textStyles.bodyMedium
                      ?.copyWith(color: Colors.amber.shade800),
                ),
                // const SizedBox(width: 10,),
                const Spacer(),
                Text(
                  HumanFormats.number(movie.popularity),
                  style: textStyles.bodySmall,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

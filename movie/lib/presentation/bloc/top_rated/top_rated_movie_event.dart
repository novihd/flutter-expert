part of 'top_rated_movie_bloc.dart';

abstract class TopRatedMovieEvent extends Equatable {
  const TopRatedMovieEvent();

  @override
  List<Object?> get props => [];
}

class FetchTopRatedMovie extends TopRatedMovieEvent {
  const FetchTopRatedMovie();

  @override
  List<Object?> get props => [];
}

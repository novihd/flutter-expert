// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class Series extends Equatable {
  String? posterPath;
  num? popularity;
  int? id;
  String? backdropPath;
  num? voteAverage;
  String? overview;
  String? firstAirDate;
  List<String>? originCountry;
  List<int>? genreIds;
  String? originalLanguage;
  num? voteCount;
  String? name;
  String? originalName;

  Series.watchlist(
      {required this.id,
      required this.overview,
      required this.posterPath,
      required this.name});

  Series(
      {required this.posterPath,
      required this.popularity,
      required this.id,
      required this.backdropPath,
      required this.voteAverage,
      required this.overview,
      required this.firstAirDate,
      required this.originCountry,
      required this.originalLanguage,
      required this.genreIds,
      required this.voteCount,
      required this.name,
      required this.originalName});

  @override
  List<Object?> get props => [
        posterPath,
        popularity,
        id,
        backdropPath,
        voteAverage,
        overview,
        firstAirDate,
        originCountry,
        originalLanguage,
        genreIds,
        voteCount,
        name,
        originalName
      ];
}

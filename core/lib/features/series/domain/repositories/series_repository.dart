import 'package:core/core.dart';
import 'package:core/features/series/domain/entities/season_detail.dart';
import 'package:core/features/series/domain/entities/series.dart';
import 'package:core/features/series/domain/entities/series_detail.dart';
import 'package:dartz/dartz.dart';

abstract class SeriesRepository {
  Future<Either<Failure, List<Series>>> getNowPlayingSeries();
  Future<Either<Failure, List<Series>>> getPopularSeries();
  Future<Either<Failure, List<Series>>> getTopRatedSeries();
  Future<Either<Failure, SeriesDetail>> getSeriesDetail(int id);
  Future<Either<Failure, List<Series>>> getSeriesRecommendations(int id);
  Future<Either<Failure, List<SeasonDetail>>> getSeriesSeason(
      String tvId, String seasonNumber);
  Future<Either<Failure, List<Series>>> searchSeries(String query);
  Future<Either<Failure, String>> saveWatchlistSeries(SeriesDetail series);
  Future<Either<Failure, String>> removeWatchlistSeries(SeriesDetail series);
  Future<bool> isAddedToWatchlistSeries(int id);
  Future<Either<Failure, List<Series>>> getWatchlistSeries();
}

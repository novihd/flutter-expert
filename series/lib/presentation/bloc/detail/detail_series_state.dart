part of 'detail_series_bloc.dart';

abstract class DetailSeriesState extends Equatable {
  const DetailSeriesState();
  @override
  List<Object?> get props => [];
}

class DetailSeriesLoading extends DetailSeriesState {}

class DetailSeriesEmpty extends DetailSeriesState {}

class DetailSeriesHasData extends DetailSeriesState {
  final SeriesDetail result;

  const DetailSeriesHasData(this.result);

  @override
  List<Object?> get props => [result];
}

class DetailSeriesError extends DetailSeriesState {
  final String message;

  const DetailSeriesError(this.message);

  @override
  List<Object?> get props => [message];
}

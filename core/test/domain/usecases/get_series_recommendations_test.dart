import 'package:core/features/series/domain/entities/series.dart';
import 'package:core/features/series/domain/usecases/get_series_recommendations.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late GetSeriesRecommendations usecase;
  late MockSeriesRepository mockSeriesRepository;

  setUp(() {
    mockSeriesRepository = MockSeriesRepository();
    usecase = GetSeriesRecommendations(mockSeriesRepository);
  });

  const tId = 1;
  final tSeries = <Series>[];

  test('should get list of movie recommendations from the repository',
      () async {
    // arrange
    when(mockSeriesRepository.getSeriesRecommendations(tId))
        .thenAnswer((_) async => Right(tSeries));
    // act
    final result = await usecase.execute(tId);
    // assert
    expect(result, Right(tSeries));
  });
}

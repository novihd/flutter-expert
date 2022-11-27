import 'package:core/features/series/domain/usecases/get_watchlist_series_status.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late GetWatchlistSeriesStatus usecase;
  late MockSeriesRepository mockSeriesRepository;

  setUp(() {
    mockSeriesRepository = MockSeriesRepository();
    usecase = GetWatchlistSeriesStatus(mockSeriesRepository);
  });

  test('should get watchlist status from repository', () async {
    // arrange
    when(mockSeriesRepository.isAddedToWatchlistSeries(1))
        .thenAnswer((_) async => true);
    // act
    final result = await usecase.execute(1);
    // assert
    expect(result, true);
  });
}

import 'package:dio/dio.dart';

import '../model/stock_data.dart';

// Этот апи ключ можно получить за 20 секунд
const apiKey = 'RLVWZJTKDTZYIE9G';

class ChartRepository {
  const ChartRepository(this._dio);

  final Dio _dio;
  Future<StockData> getByKey(String key) async {
    try {
      final response = await _dio.get(
        'query',
        queryParameters: {
          'function': 'OVERVIEW',
          'symbol': key,
          'apikey': apiKey,
        },
      );
      return StockData.fromJson(response.data);
    } catch (e, s) {
      // Вместо нормального логгирования
      print(e);
      print(s);
      rethrow;
    }
  }

  /// Ключи для текущего задания
  static const keys = ['AAPL', 'AMZN', 'GOOG', 'MSFT', 'META'];

  /// Функция, возвращающая все данные по ключам [ChartRepository.keys]
  Future<List<StockData>> getAll() async {
    List<StockData> result = [];
    for (final key in keys) {
      result.add(await getByKey(key));
    }
    return result;
  }
}

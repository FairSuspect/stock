import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock/model/stock_data.dart';

final chartStateHolderProvider =
    StateNotifierProvider<ChartStateHolder, Map<String, StockData>>((ref) {
  return ChartStateHolder();
});

class ChartStateHolder extends StateNotifier<Map<String, StockData>> {
  ChartStateHolder() : super({});

  void setData(Map<String, StockData> data) {
    state = data;
  }

  void clear() {
    state = {};
  }
}

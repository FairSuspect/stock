import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock/manager/chart_repository_manager.dart';
import 'package:stock/model/stock_data.dart';
import 'package:stock/repository/chart_repository.dart';
import 'package:stock/state/chart_state_holder.dart';
import 'package:stock/state/error_state_holder.dart';

final chartManagerProvider = Provider<ChartManager>((ref) {
  return ChartManager(
    ref.watch(chartRepositoryManagerProvider),
    ref.watch(chartStateHolderProvider.notifier),
    ref.watch(errorStateProvider.notifier),
  )..getChartData();
});

class ChartManager {
  const ChartManager(this._repository, this._stateHolder, this._errorNotifier);

  final ChartRepository _repository;
  final ChartStateHolder _stateHolder;
  final ErrorNotifier _errorNotifier;
  static const List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.orange,
  ];
  void repeatFetch() async {
    _errorNotifier.setState(false);
    getChartData();
  }

  void getChartData() async {
    try {
      final data = await _repository.getAll();
      Map<String, StockData> sections = {};
      for (final element in data) {
        sections[element.symbol] = element;
      }

      _stateHolder.setData(sections);
    } catch (e) {
      _stateHolder.clear();
      _errorNotifier.setState(true);
    }
  }
}

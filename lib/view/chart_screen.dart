import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock/manager/chart_manager.dart';
import 'package:stock/repository/chart_repository.dart';
import 'package:stock/state/chart_state_holder.dart';
import 'package:stock/view/detailed_stock_screen.dart';

import '../state/error_state_holder.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _ChartBody(),
      floatingActionButton: _FAB(),
    );
  }
}

class _FAB extends ConsumerWidget {
  const _FAB();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
        onPressed: ref.read(chartManagerProvider).repeatFetch,
        child: const Icon(Icons.restart_alt));
  }
}

class _ChartBody extends ConsumerWidget {
  const _ChartBody();

  static const List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.orange,
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sections = ref.watch(chartStateHolderProvider);
    final hasError = ref.watch(errorStateProvider);
    int index = 0;
    const radius = 100.0;
    return Center(
        child: hasError
            ? const _ErrorWidget()
            : sections.length != ChartRepository.keys.length
                ? const _Loader()
                : PieChart(
                    PieChartData(
                        centerSpaceRadius: radius,
                        sections: sections.values.map((e) {
                          return PieChartSectionData(
                            value: double.parse(e.marketCapitalization),
                            title: e.symbol,
                            // Просто случайное решение для распределния цветов
                            color: colors[index++],
                          );
                        }).toList(),
                        pieTouchData: PieTouchData(
                          touchCallback:
                              (FlTouchEvent event, pieTouchResponse) {
                            if (event is FlTapDownEvent) {
                              // Всего один экран, поэтому отдельного решения по навигации нет
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DetailedStockScreen(
                                    data: sections[pieTouchResponse!
                                        .touchedSection!
                                        .touchedSection!
                                        .title]!),
                              ));
                            }
                          },
                        )),
                  ));
  }
}

class _ErrorWidget extends StatelessWidget {
  const _ErrorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Произошла неизвестная ошибка. Попробуйте еще раз"),
        SizedBox(
          height: 12,
        ),
        _RepeatButton(),
      ],
    );
  }
}

class _RepeatButton extends ConsumerWidget {
  const _RepeatButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
        onPressed: ref.read(chartManagerProvider).repeatFetch,
        child: const Text("Повторить"));
  }
}

class _Loader extends StatelessWidget {
  const _Loader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 50,
        height: 50,
        child: CircularProgressIndicator(),
      ),
    );
  }
}

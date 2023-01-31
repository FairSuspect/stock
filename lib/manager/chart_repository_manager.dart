import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock/manager/dio_manager.dart';
import 'package:stock/repository/chart_repository.dart';

final chartRepositoryManagerProvider = Provider<ChartRepository>((ref) {
  return ChartRepository(ref.watch(dioProvider));
});

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_data.freezed.dart';
part 'stock_data.g.dart';

@freezed
class StockData with _$StockData {
  const factory StockData({
    @JsonKey(name: 'Symbol') required final String symbol,
    @JsonKey(name: 'Name') required final String name,
    @JsonKey(name: 'Description') required final String decription,
    @JsonKey(name: 'MarketCapitalization')
        required final String marketCapitalization,
    @JsonKey(name: "Currency") required final String currency,
    @JsonKey(name: "Exchange") required final String exchange,
  }) = _StockData;

  factory StockData.fromJson(Map<String, dynamic> json) =>
      _$StockDataFromJson(json);

  static List<StockData> listFromJson(List list) =>
      list.map((e) => StockData.fromJson(e)).toList();
}

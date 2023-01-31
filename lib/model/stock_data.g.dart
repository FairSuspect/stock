// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StockData _$$_StockDataFromJson(Map<String, dynamic> json) => _$_StockData(
      symbol: json['Symbol'] as String,
      name: json['Name'] as String,
      decription: json['Description'] as String,
      marketCapitalization: json['MarketCapitalization'] as String,
      currency: json['Currency'] as String,
      exchange: json['Exchange'] as String,
    );

Map<String, dynamic> _$$_StockDataToJson(_$_StockData instance) =>
    <String, dynamic>{
      'Symbol': instance.symbol,
      'Name': instance.name,
      'Description': instance.decription,
      'MarketCapitalization': instance.marketCapitalization,
      'Currency': instance.currency,
      'Exchange': instance.exchange,
    };

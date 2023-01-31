// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StockData _$StockDataFromJson(Map<String, dynamic> json) {
  return _StockData.fromJson(json);
}

/// @nodoc
mixin _$StockData {
  @JsonKey(name: 'Symbol')
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String get decription => throw _privateConstructorUsedError;
  @JsonKey(name: 'MarketCapitalization')
  String get marketCapitalization => throw _privateConstructorUsedError;
  @JsonKey(name: "Currency")
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "Exchange")
  String get exchange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockDataCopyWith<StockData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockDataCopyWith<$Res> {
  factory $StockDataCopyWith(StockData value, $Res Function(StockData) then) =
      _$StockDataCopyWithImpl<$Res, StockData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String symbol,
      @JsonKey(name: 'Name') String name,
      @JsonKey(name: 'Description') String decription,
      @JsonKey(name: 'MarketCapitalization') String marketCapitalization,
      @JsonKey(name: "Currency") String currency,
      @JsonKey(name: "Exchange") String exchange});
}

/// @nodoc
class _$StockDataCopyWithImpl<$Res, $Val extends StockData>
    implements $StockDataCopyWith<$Res> {
  _$StockDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? decription = null,
    Object? marketCapitalization = null,
    Object? currency = null,
    Object? exchange = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      decription: null == decription
          ? _value.decription
          : decription // ignore: cast_nullable_to_non_nullable
              as String,
      marketCapitalization: null == marketCapitalization
          ? _value.marketCapitalization
          : marketCapitalization // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StockDataCopyWith<$Res> implements $StockDataCopyWith<$Res> {
  factory _$$_StockDataCopyWith(
          _$_StockData value, $Res Function(_$_StockData) then) =
      __$$_StockDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Symbol') String symbol,
      @JsonKey(name: 'Name') String name,
      @JsonKey(name: 'Description') String decription,
      @JsonKey(name: 'MarketCapitalization') String marketCapitalization,
      @JsonKey(name: "Currency") String currency,
      @JsonKey(name: "Exchange") String exchange});
}

/// @nodoc
class __$$_StockDataCopyWithImpl<$Res>
    extends _$StockDataCopyWithImpl<$Res, _$_StockData>
    implements _$$_StockDataCopyWith<$Res> {
  __$$_StockDataCopyWithImpl(
      _$_StockData _value, $Res Function(_$_StockData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? decription = null,
    Object? marketCapitalization = null,
    Object? currency = null,
    Object? exchange = null,
  }) {
    return _then(_$_StockData(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      decription: null == decription
          ? _value.decription
          : decription // ignore: cast_nullable_to_non_nullable
              as String,
      marketCapitalization: null == marketCapitalization
          ? _value.marketCapitalization
          : marketCapitalization // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StockData implements _StockData {
  const _$_StockData(
      {@JsonKey(name: 'Symbol') required this.symbol,
      @JsonKey(name: 'Name') required this.name,
      @JsonKey(name: 'Description') required this.decription,
      @JsonKey(name: 'MarketCapitalization') required this.marketCapitalization,
      @JsonKey(name: "Currency") required this.currency,
      @JsonKey(name: "Exchange") required this.exchange});

  factory _$_StockData.fromJson(Map<String, dynamic> json) =>
      _$$_StockDataFromJson(json);

  @override
  @JsonKey(name: 'Symbol')
  final String symbol;
  @override
  @JsonKey(name: 'Name')
  final String name;
  @override
  @JsonKey(name: 'Description')
  final String decription;
  @override
  @JsonKey(name: 'MarketCapitalization')
  final String marketCapitalization;
  @override
  @JsonKey(name: "Currency")
  final String currency;
  @override
  @JsonKey(name: "Exchange")
  final String exchange;

  @override
  String toString() {
    return 'StockData(symbol: $symbol, name: $name, decription: $decription, marketCapitalization: $marketCapitalization, currency: $currency, exchange: $exchange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StockData &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.decription, decription) ||
                other.decription == decription) &&
            (identical(other.marketCapitalization, marketCapitalization) ||
                other.marketCapitalization == marketCapitalization) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.exchange, exchange) ||
                other.exchange == exchange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, name, decription,
      marketCapitalization, currency, exchange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StockDataCopyWith<_$_StockData> get copyWith =>
      __$$_StockDataCopyWithImpl<_$_StockData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockDataToJson(
      this,
    );
  }
}

abstract class _StockData implements StockData {
  const factory _StockData(
      {@JsonKey(name: 'Symbol')
          required final String symbol,
      @JsonKey(name: 'Name')
          required final String name,
      @JsonKey(name: 'Description')
          required final String decription,
      @JsonKey(name: 'MarketCapitalization')
          required final String marketCapitalization,
      @JsonKey(name: "Currency")
          required final String currency,
      @JsonKey(name: "Exchange")
          required final String exchange}) = _$_StockData;

  factory _StockData.fromJson(Map<String, dynamic> json) =
      _$_StockData.fromJson;

  @override
  @JsonKey(name: 'Symbol')
  String get symbol;
  @override
  @JsonKey(name: 'Name')
  String get name;
  @override
  @JsonKey(name: 'Description')
  String get decription;
  @override
  @JsonKey(name: 'MarketCapitalization')
  String get marketCapitalization;
  @override
  @JsonKey(name: "Currency")
  String get currency;
  @override
  @JsonKey(name: "Exchange")
  String get exchange;
  @override
  @JsonKey(ignore: true)
  _$$_StockDataCopyWith<_$_StockData> get copyWith =>
      throw _privateConstructorUsedError;
}

import 'package:json_annotation/json_annotation.dart';

part 'currency.g.dart';

@JsonSerializable()
class Currency {
  String id;
  String symbol;
  String name;
  String slug;

  Currency(
    this.id,
    this.symbol,
    this.name,
    this.slug,
  );

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyToJson(this);
}

import 'package:delevery_app/models/category_model.dart';
import 'package:delevery_app/models/price_model.dart';
import 'package:equatable/equatable.dart';

class PriceFilter extends Equatable {
  final int id;
  final Price price;
  final bool value;

  PriceFilter(
      {required this.id, required this.price, required this.value});

  PriceFilter copyWith({int? id, Price? category, bool? value}) {
    return PriceFilter(
        id: id ?? this.id,
        price: price ?? this.price,
        value: value ?? this.value);
  }

  @override
  List<Object?> get props => [id, price, value];

  static List<PriceFilter> filters = Price.prices
      .map((e) => PriceFilter(id: e.id, price: e, value: false))
      .toList();
}

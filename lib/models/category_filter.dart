import 'package:delevery_app/models/category_model.dart';
import 'package:equatable/equatable.dart';

class CategoryFilter extends Equatable {
  final int id;
  final Category category;
  final bool value;

  CategoryFilter(
      {required this.id, required this.category, required this.value});

  CategoryFilter copyWith({int? id, Category? category, bool? value}) {
    return CategoryFilter(
        id: id ?? this.id,
        category: category ?? this.category,
        value: value ?? this.value);
  }

  @override
  List<Object?> get props => [id, category, value];

  static List<CategoryFilter> filters=Category.categories.
  map((e) => CategoryFilter(id: e.id, category: e, value: false)).toList();
}

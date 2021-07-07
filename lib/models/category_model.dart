import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Category extends Equatable {
  final int id;
  final String name;
  final SvgPicture image;

  Category({required this.id, required this.name, required this.image});

  @override
  List<Object?> get props => [id, name, image];

  static List<Category> categories = [
    Category(id: 1, name: "Pizza", image:   SvgPicture.asset("assets/pizza.svg")),//Image.asset("assets/pizza.svg")),
    Category(id: 2, name: "Burger", image: SvgPicture.asset("assets/burger.svg")),
    Category(id: 3, name: "Salad", image: SvgPicture.asset("assets/salad.svg")),
    Category(id: 4, name: "Desser", image: SvgPicture.asset("assets/cake-slice.svg")),
    Category(id: 5, name: "Drink", image: SvgPicture.asset("assets/juice.svg")),
  ];
}

import 'package:equatable/equatable.dart';

class MenuItem extends Equatable {
  final int id;
  final int resturantId;
  final String name;
  final String category;
  final String description;
  final double price;
  //final String imagUrl;
  MenuItem(
      {required this.id,
      required this.resturantId,
      required this.name,
      required this.category,
      required this.description,
      required this.price});

  @override
  // TODO: implement props
  List<Object?> get props => [id, resturantId, name, description, price];

  static List<MenuItem> menuitems = [
    MenuItem(
        id: 1,
        resturantId: 1,
        name: "Margherita",
        category: "Pizza",
        description: "Pizza With Tomatomes",
        price: 5.99),
    MenuItem(
        id: 1,
        resturantId: 1,
        name: "4 Formaggi",
        category: "Pizza",
        description: "Tomatoes,mozzarella,basil",
        price: 1.99),
    MenuItem(
        id: 1,
        resturantId: 1,
        name: "Baviera",
        category: "Pizza",
        description: "Tomatoes,mozzarella,basil",
        price: 1.99),
    MenuItem(
        id: 1,
        resturantId: 1,
        name: "Coca Cola",
        category: "Drink",
        description: "A Cold Drink ",
        price: 1.99),
  ];
}

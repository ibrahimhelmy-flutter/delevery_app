import 'package:equatable/equatable.dart';

import 'models.dart';

class Resturant extends Equatable {
  final int id;
  final String imageUrl;
  final String name;
  final List<String> tags;
  final List<MenuItem> menuItems;
  final int deleveryTime;
  final double deleveryFee;
  final double distance;

  Resturant(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.tags,
      required this.menuItems,
      required this.deleveryTime,
      required this.deleveryFee,
      required this.distance});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, imageUrl, name, tags, deleveryTime, deleveryFee, distance];

  static List<Resturant> resturants = [
    Resturant(
        id: 1,
        imageUrl:
            "https://images.unsplash.com/photo-1590846406792-0adc7f938f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=332&q=80",
        name: "‪Charlie's Restaurant‬",
        tags:MenuItem.menuitems
            .where((menuItem) => menuItem.resturantId == 1) 
            .map((menuItem) => menuItem.category).toSet().toList()
        
        ,//["Italian", "Dessert","Ice Cream"],
        menuItems: MenuItem.menuitems
            .where((menuItem) => menuItem.resturantId == 1)
            .toList(),
        deleveryTime: 30,
        deleveryFee: 2.99,
        distance: 3.1),
    Resturant(
        id: 2,
        imageUrl:
            "https://images.unsplash.com/photo-1533777857889-4be7c70b33f7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
        name: "Esplanade Cafe Restaurant",
         tags:MenuItem.menuitems
            .where((menuItem) => menuItem.resturantId == 2) 
            .map((menuItem) => menuItem.category).toSet().toList(),
        menuItems: MenuItem.menuitems
            .where((menuItem) => menuItem.resturantId == 2)
            .toList(),
        deleveryTime: 20,
        deleveryFee: 5.5,
        distance: 2.1),
    Resturant(
        id: 3,
        imageUrl:
            "https://images.unsplash.com/photo-1585518419759-7fe2e0fbf8a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1848&q=80",
        name: "‪Culina‬",
            tags:MenuItem.menuitems
            .where((menuItem) => menuItem.resturantId == 3) 
            .map((menuItem) => menuItem.category).toSet().toList(),
        menuItems: MenuItem.menuitems
            .where((menuItem) => menuItem.resturantId == 3)
            .toList(),
        deleveryTime: 15,
        deleveryFee: 4,
        distance: 0.1),
    Resturant(
        id: 4,
        imageUrl:
            "https://images.unsplash.com/photo-1587574293340-e0011c4e8ecf?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHJlc3RhdXJhbnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        name: "Om Hassan",
           tags:MenuItem.menuitems
            .where((menuItem) => menuItem.resturantId ==4) 
            .map((menuItem) => menuItem.category).toSet().toList(),
        menuItems: MenuItem.menuitems
            .where((menuItem) => menuItem.resturantId == 4)
            .toList(),
        deleveryTime: 25,
        deleveryFee: 3.99,
        distance: 0.1),
  ];
}

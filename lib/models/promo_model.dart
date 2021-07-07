import 'package:equatable/equatable.dart';

class Promo extends Equatable {
  final int id;
  final String title;
  final String description;
  final String imageUrl;

  Promo(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageUrl});

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        imageUrl,
      ];
  static List<Promo> proms = [
    Promo(
      id: 1,
      title: "Free Delevery on Your First 3 order",
      description:
          "place an order of \$10 or more and the delevery fee is on us",
      imageUrl:
          "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    ),
    Promo(
      id: 1,
      title: "20% off on Sellected Resturant",
      description: "Get a discount at more than 200+ resturants",
      imageUrl:
          "https://images.unsplash.com/photo-1504754524776-8f4f37790ca0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    ),
  ];
}

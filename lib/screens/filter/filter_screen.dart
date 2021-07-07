import 'package:delevery_app/models/category_model.dart';
import 'package:delevery_app/models/price_model.dart';
import 'package:delevery_app/screens/location/locatin_screen.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  //const MyHomePage({ Key? key }) : super(key: key);

  static const String routeName = '/FilterScreen';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => FilterScreen(),
        settings: RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text("FilterScreen"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
              CustomPriceList(prices: Price.prices),
              Text(
                "Category",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
              CustomeCategoryFilter(categories: Category.categories),
            ],
          ),
        ));
  }
}

class CustomPriceList extends StatelessWidget {
  final List<Price> prices;
  const CustomPriceList({Key? key, required this.prices}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: prices
            .map((price) => InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      price.price,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ))
            .toList());
  }
}

class CustomeCategoryFilter extends StatelessWidget {
  final List<Category> categories;
  const CustomeCategoryFilter({Key? key, required this.categories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  categories[index].name,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: 25,
                  child: Checkbox(
                    onChanged: (bool? newvalue) {},
                    value: false,
                  ),
                )
              ],
            ),
          );
        });
  }
}

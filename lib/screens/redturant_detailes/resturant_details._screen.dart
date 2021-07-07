import 'package:delevery_app/models/models.dart';
import 'package:delevery_app/screens/location/locatin_screen.dart';
import 'package:delevery_app/widgets/widgets.dart';

import 'package:flutter/material.dart';

class ResturantDetailsScreen extends StatelessWidget {
  //const MyHomePage({ Key? key }) : super(key: key);

  static const String routeName = '/ResturantDetailsScreen';

  const ResturantDetailsScreen({Key? key, required this.resturant})
      : super(key: key);
  static Route route({required Resturant resturant}) {
    return MaterialPageRoute(
        builder: (_) => ResturantDetailsScreen(resturant: resturant),
        settings: RouteSettings(name: routeName));
  }

  final Resturant resturant;

  @override
  Widget build(BuildContext context) {
    // Resturant resturant = Resturant.resturants[0];
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text("ResturantDetailsScreen"),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(),
                    padding: const EdgeInsets.symmetric(horizontal: 50)),
                onPressed: () {},
                child: Text("Basket"),
              ),
            ],
          ),
        ),
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width, 50)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(resturant.imageUrl))),
              ),
              ResturantInformation(resturant: resturant),
              ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: resturant.tags.length,
                  itemBuilder: (context, index) {
                    return _buildeMenuItem(resturant, context, index);
                  })
            ],
          ),
        ));
  }

  Widget _buildeMenuItem(Resturant resturant, BuildContext context, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            resturant.tags[index],
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(color: Theme.of(context).primaryColor),
          ),
        ),
        Column(
          children: resturant.menuItems
              .where((menuItem) => menuItem.category == resturant.tags[index])
              .map((menuItem) => Column(
                    children: [
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            menuItem.name,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          subtitle: Text(menuItem.description,
                              style: Theme.of(context).textTheme.bodyText1),
                          trailing: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("\$${menuItem.price}",
                                  style: Theme.of(context).textTheme.bodyText1),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add_circle,
                                    color: Theme.of(context).primaryColor,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 2,
                      )
                    ],
                  ))
              .toList(),
        )
      ],
    );
  }
}

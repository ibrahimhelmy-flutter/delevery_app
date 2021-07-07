import 'dart:async';

import 'package:delevery_app/blocs/geolocation/geolocation_bloc.dart';
import 'package:delevery_app/blocs/placeAutoComplete/placeautocomplete_bloc.dart';
import 'package:delevery_app/models/category_model.dart';
import 'package:delevery_app/models/place_autoComplete.dart';
import 'package:delevery_app/models/promo_model.dart';
import 'package:delevery_app/models/resturant_model.dart';
import 'package:delevery_app/screens/location/locatin_screen.dart';
import 'package:delevery_app/screens/redturant_detailes/resturant_details._screen.dart';
import 'package:delevery_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyHomePage extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => MyHomePage(), settings: RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                    itemCount: Category.categories.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) {
                      return CategoryBox(category: Category.categories[index]);
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 125,
                child: ListView.builder(
                    itemCount: Promo.proms.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) {
                      return PromBox(
                        promo: Promo.proms[index],
                      );
                    }),
              ),
            ),
            FoodSearchBuildr(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Top Rated",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: Resturant.resturants.length,
                physics: ClampingScrollPhysics(),
                itemBuilder: (ctx, index) {
                  return ResturantCard(resturant: Resturant.resturants[index]);
                })
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.person),
      ),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, LocationScreen.routeName);
            },
            icon: Icon(Icons.maps_ugc_outlined))
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("CURRENT LOCATION",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.white)),
          Text("Cairo,1 st Way",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.white)),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.0);
}

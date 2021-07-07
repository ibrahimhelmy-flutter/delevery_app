import 'package:delevery_app/models/models.dart';
import 'package:delevery_app/screens/location/locatin_screen.dart';
import 'package:delevery_app/screens/screnns.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print("${settings.name}");
    switch (settings.name) {
      case "/":
        return MyHomePage.route();
      case MyHomePage.routeName:
        return MyHomePage.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case BasketScreen.routeName :
        return BasketScreen.route();

      case CheckOutScreeen.routeName:
        return CheckOutScreeen.route();

      case DeleveryTimeScreen.routeName:
        return DeleveryTimeScreen.route();

      case FilterScreen.routeName:
        return FilterScreen.route();

      case ResturantDetailsScreen.routeName:
        return ResturantDetailsScreen.route(resturant:
        settings.arguments as  Resturant
        );

      case ResturantListingScreen.routeName:
        return ResturantListingScreen.route();
      case VoucherScreen.routeName:
        return VoucherScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text("Error"),
              ),
            ),
        settings: RouteSettings(name: "/error"));
  }
}

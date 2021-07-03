import 'package:delevery_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  //const LocationScreen({ Key? key }) : super(key: key);
  static const String routeName = '/LocationScreen';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => LocationScreen(),
        settings: RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, MyHomePage.routeName);
          },
          child: Text("Got to Home"),
        ),
      ),
    );
  }
}

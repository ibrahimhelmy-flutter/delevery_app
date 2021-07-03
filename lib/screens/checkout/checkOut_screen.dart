import 'package:delevery_app/screens/location/locatin_screen.dart';
import 'package:flutter/material.dart';

class CheckOutScreeen extends StatelessWidget {
  //const MyHomePage({ Key? key }) : super(key: key);

  static const String routeName = '/CheckOutScreeen';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => CheckOutScreeen(), settings: RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckOutScreeen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, LocationScreen.routeName);
          },
          child: Text("Got to Location"),
        ),
      ),
    );
  }
}

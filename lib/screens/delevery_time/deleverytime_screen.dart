import 'package:delevery_app/screens/location/locatin_screen.dart';
import 'package:flutter/material.dart';

class DeleveryTimeScreen extends StatelessWidget {
  //const MyHomePage({ Key? key }) : super(key: key);

  static const String routeName = '/DeleveryTimeScreen';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => DeleveryTimeScreen(), settings: RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DeleveryTimeScreen"),
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

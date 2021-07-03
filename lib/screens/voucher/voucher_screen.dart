
import 'package:delevery_app/screens/location/locatin_screen.dart';
import 'package:flutter/material.dart';

class VoucherScreen extends StatelessWidget {
  //const MyHomePage({ Key? key }) : super(key: key);

  static const String routeName = '/VoucherScreen';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => VoucherScreen(), settings: RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VoucherScreen"),
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

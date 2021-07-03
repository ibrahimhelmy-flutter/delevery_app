import 'dart:async';

import 'package:delevery_app/blocs/geolocation/geolocation_bloc.dart';
import 'package:delevery_app/blocs/placeAutoComplete/placeautocomplete_bloc.dart';
import 'package:delevery_app/models/place_autoComplete.dart';
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

  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: BlocBuilder<GeolocationBloc, GeolocationState>(
              builder: (context, state) {
                if (state is GeolocationLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is GeolocationLoaded) {
                  return Gmap(
                      lat: state.position.latitude,
                      lng: state.position.longitude);
                }
                return Text("ther is Some Thing Wrong");
              },
            ),
          ),
          Positioned(
              top: 40,
              left: 20,
              right: 20,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/logo.svg",
                    height: 50,
                    alignment: Alignment.topCenter,
                  ),
                  BlocBuilder<PlaceautocompleteBloc, PlaceautocompleteState>(
                    builder: (context, state) {
                      if (state is PlaceautocompleteLoading) {
                        return Center(child: CircularProgressIndicator());
                      } else if (state is PlaceautocompleteLoaded) {
                        print(state.autocomplete);
                        return Expanded(
                          child: Column(
                            children: [
                              LocationSearchBox(),
                              Container(
                                height: 300,
                                color: state.autocomplete.length > 0
                                    ? Colors.black.withOpacity(0.6)
                                    : Colors.transparent,
                                margin: EdgeInsets.all(8),
                                child: ListView.builder(
                                    itemCount: state.autocomplete.length,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        title: Text(state
                                            .autocomplete[index].description),
                                      );
                                    }),
                              )
                            ],
                          ),
                        );
                      }
                      return Text("wrong");
                    },
                  ),
                ],
              )),
          Positioned(
              bottom: 40,
              left: 30,
              right: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor),
                    onPressed: () {},
                    child: Text(
                      "Save",
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(color: Colors.white),
                    )),
              ))
        ],
      ),
    );
  }
}

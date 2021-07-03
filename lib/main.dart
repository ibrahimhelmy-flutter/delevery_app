

import 'package:delevery_app/blocs/geolocation/geolocation_bloc.dart';
import 'package:delevery_app/blocs/placeAutoComplete/placeautocomplete_bloc.dart';

import 'package:delevery_app/config/app_router.dart';
import 'package:delevery_app/repositories/gelocation/geolocation_repositiry.dart';
import 'package:delevery_app/repositories/places/places_repository.dart';
import 'package:delevery_app/screens/screnns.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/them.dart';

void main()async {
     WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider<GelocationRepository>(
              create: (_) => GelocationRepository()),
          RepositoryProvider<PlaceRepository>(
            create: (_) => PlaceRepository()),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (contetx) => GeolocationBloc(
                  gelocationRepository: contetx.read<GelocationRepository>())
                ..add(LoadGelocation()),
            ),
            BlocProvider(
              create: (contetx) => PlaceautocompleteBloc(
                  placeRepository: contetx.read<PlaceRepository>())
                ..add(LoadAutoComplete()),
            ),
          ],
          child: MaterialApp(
            theme: theme(),
            onGenerateRoute: AppRouter.onGenerateRoute,
            initialRoute: MyHomePage.routeName,
          ),
        ));
  }
}

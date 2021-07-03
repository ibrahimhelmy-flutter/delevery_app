import 'package:delevery_app/blocs/placeAutoComplete/placeautocomplete_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationSearchBox extends StatelessWidget {
  const LocationSearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaceautocompleteBloc, PlaceautocompleteState>(
      builder: (context, state) {
        if (state is PlaceautocompleteLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is PlaceautocompleteLoaded) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Enter your Locaion",
                suffixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.only(left: 20, bottom: 5, right: 5),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white)),
              ),
              onChanged: (val) {
                context
                    .read<PlaceautocompleteBloc>()
                    .add(LoadAutoComplete(searchInput: val));
              },
            ),
          );
        }
        return Text("Wrong");
      },
    );
  }
}

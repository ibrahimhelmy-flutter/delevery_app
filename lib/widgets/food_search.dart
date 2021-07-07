import 'package:delevery_app/screens/filter/filter_screen.dart';
import 'package:flutter/material.dart';

class FoodSearchBuildr extends StatelessWidget {
  const FoodSearchBuildr({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "What You Want To Eat?",
                suffixIcon: Icon(
                  Icons.search,
                  color: Theme.of(context).primaryColor,
                ),
                contentPadding: EdgeInsets.only(left: 20, bottom: 5, right: 5),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white)),
              ),
              // onChanged: (val) {
              //   context
              //       .read<PlaceautocompleteBloc>()
              //       .add(LoadAutoComplete(searchInput: val));
              // },
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, FilterScreen.routeName);
                },
                icon: Icon(
                  Icons.menu,
                  color: Theme.of(context).primaryColor,
                )),
          )
        ],
      ),
    );
  }
}

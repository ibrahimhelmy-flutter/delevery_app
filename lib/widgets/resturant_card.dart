
import 'package:delevery_app/models/models.dart';
import 'package:delevery_app/screens/screnns.dart';
import 'package:delevery_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ResturantCard extends StatelessWidget {
  final Resturant resturant;
  const ResturantCard({Key? key, required this.resturant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ResturantDetailsScreen.routeName,arguments: resturant);
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      image: DecorationImage(
                          image: NetworkImage(resturant.imageUrl),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Text(
                        "${resturant.deleveryTime} min",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    )),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text(
                  resturant.name,
                  style: Theme.of(context).textTheme.headline5,
                ),
                // Text("${resturant.tags}"),
                SizedBox(height: 5),
                ResturntTags(resturant: resturant),
                SizedBox(height: 5),
                Text(
                    "${resturant.distance} km -\$${resturant.deleveryFee} delevery Fee",
                    style: Theme.of(context).textTheme.bodyText1)
              ],
            )
          ],
        ),
      ),
    );
  }
}


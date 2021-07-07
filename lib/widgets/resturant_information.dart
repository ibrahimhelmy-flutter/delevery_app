import 'package:delevery_app/models/models.dart';
import 'package:delevery_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ResturantInformation extends StatelessWidget {
  final Resturant resturant;
  const ResturantInformation({Key? key, required this.resturant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            resturant.name,
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(color: Theme.of(context).primaryColor),
          ),
          SizedBox(height: 5),
          ResturntTags(resturant: resturant),
          SizedBox(height: 5),
          Text(
              "${resturant.distance}km away - \$${resturant.deleveryFee} delevery fee",
              style: Theme.of(context).textTheme.bodyText1),
          SizedBox(height: 5),
          Text("Resturant Information",
              style: Theme.of(context).textTheme.headline5),
          SizedBox(height: 5),
          Text("this is small intoducation about Resturant and the Futures",
              style: Theme.of(context).textTheme.bodyText1),
        ],
      ),
    );
  }
}

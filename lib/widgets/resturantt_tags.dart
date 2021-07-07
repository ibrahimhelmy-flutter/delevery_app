
import 'package:delevery_app/models/models.dart';
import 'package:flutter/material.dart';

class ResturntTags extends StatelessWidget {
  const ResturntTags({
    Key? key,
    required this.resturant,
  }) : super(key: key);

  final Resturant resturant;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: resturant.tags
            .map((tag) => resturant.tags.indexOf(tag) ==
                    resturant.tags.length - 1
                ? Text(
                    tag,
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                : Text("$tag, ",
                    style: Theme.of(context).textTheme.bodyText1))
            .toList());
  }
}
import 'dart:convert';

import 'package:delevery_app/models/place_autoComplete.dart';
import 'package:delevery_app/repositories/places/base_places_repository.dart';
import 'package:http/http.dart' as http;

class PlaceRepository extends BasePlacesRepoistory {
  final String key = "AIzaSyBIfRVeV1kK-xMNfbLqOoc8ZdoNtVvwp-o";
  final String types = 'geocode';
  @override
  Future<List<PlaceAutoCompleteModel>> getAutoComplate(//&types=$types
      String searchInput) async {
    final String url =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$searchInput&key=$key';

    var response = await http.get(Uri.parse(url));
 
      var jsonm = jsonDecode(response.body);
        var result = jsonm['predictions'] as List ;
      print("${jsonm}");
     // print("<<<<<<<<<<<<<<<${result.first}");
      return result.map((e) => PlaceAutoCompleteModel.fromJson(e)).toList();
    

  }
}

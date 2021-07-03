import 'package:delevery_app/models/place_autoComplete.dart';

abstract class BasePlacesRepoistory {

  Future<List<PlaceAutoCompleteModel>?>  getAutoComplate(String searchInput)async{}
}
 
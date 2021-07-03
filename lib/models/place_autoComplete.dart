class PlaceAutoCompleteModel {
  final String description;
  final String placeId;

  PlaceAutoCompleteModel({required this.description, required this.placeId});
  factory PlaceAutoCompleteModel.fromJson(Map<String, dynamic> json) {
    return PlaceAutoCompleteModel(
        description: json['description'], placeId: json['place_id']);
  }
}

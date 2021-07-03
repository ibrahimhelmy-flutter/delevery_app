part of 'placeautocomplete_bloc.dart';

abstract class PlaceautocompleteEvent extends Equatable {
  const PlaceautocompleteEvent();

  @override
  List<Object> get props => [];
}

class LoadAutoComplete extends PlaceautocompleteEvent {
  final String searchInput;

  LoadAutoComplete({this.searchInput=""});
    @override
  List<Object> get props => [searchInput];
}

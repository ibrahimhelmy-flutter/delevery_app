part of 'placeautocomplete_bloc.dart';

abstract class PlaceautocompleteState extends Equatable {
  const PlaceautocompleteState();

  @override
  List<Object> get props => [];
}

class PlaceautocompleteLoading extends PlaceautocompleteState {}

class PlaceautocompleteLoaded extends PlaceautocompleteState {
  final List<PlaceAutoCompleteModel> autocomplete;

  PlaceautocompleteLoaded({required this.autocomplete});
    @override
  List<Object> get props => [autocomplete];
}

class PlaceautocompleteError extends PlaceautocompleteState {}

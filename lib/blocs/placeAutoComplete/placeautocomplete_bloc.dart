import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:delevery_app/models/place_autoComplete.dart';
import 'package:delevery_app/repositories/places/places_repository.dart';
import 'package:equatable/equatable.dart';

part 'placeautocomplete_event.dart';
part 'placeautocomplete_state.dart';

class PlaceautocompleteBloc
    extends Bloc<PlaceautocompleteEvent, PlaceautocompleteState> {
  final PlaceRepository _placeRepository;
  StreamSubscription? _placeSubscription;

  PlaceautocompleteBloc({required PlaceRepository placeRepository})
      : _placeRepository = placeRepository,
        super(PlaceautocompleteLoading());

  @override
  Stream<PlaceautocompleteState> mapEventToState(
      PlaceautocompleteEvent event) async* {
    if (event is LoadAutoComplete) {
      yield* mapLoadAutoCompleteToState(event);
    }
  }

  Stream<PlaceautocompleteState> mapLoadAutoCompleteToState(
      LoadAutoComplete event) async* {
    _placeSubscription?.cancel();

    // yield PlaceautocompleteLoading();
    // try {
    List<PlaceAutoCompleteModel> autos =
        await _placeRepository.getAutoComplate(event.searchInput);
    print(autos);
    yield PlaceautocompleteLoaded(autocomplete: autos);
    // } catch (e) {}
  }

  @override
  Future<void> close() {
    _placeSubscription?.cancel();
    return super.close();
  }
}

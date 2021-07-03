import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:delevery_app/repositories/gelocation/geolocation_repositiry.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';

part 'geolocation_event.dart';
part 'geolocation_state.dart';

class GeolocationBloc extends Bloc<GeolocationEvent, GeolocationState> {
  final GelocationRepository _gelocationRepository;
  StreamSubscription? _gelocationSubscription;

  GeolocationBloc({required GelocationRepository gelocationRepository})
      : _gelocationRepository = gelocationRepository,
        super(GeolocationLoading());

  @override
  Stream<GeolocationState> mapEventToState(GeolocationEvent event) async* {
    if (event is LoadGelocation) {
      yield* _mapLoadGelocationToState();
    } else if (event is UpdateGelocation) {
      yield* _mapUpdateGelocationToState(event);
    }
  }

  Stream<GeolocationState> _mapLoadGelocationToState() async* {
    _gelocationSubscription?.cancel();

    final Position position = await _gelocationRepository.getCurrentLocation();
    yield GeolocationLoaded(position: position);
  }

  Stream<GeolocationState> _mapUpdateGelocationToState(
      UpdateGelocation event) async* {
    yield GeolocationLoaded(position: event.position);
  }

  @override
  Future<void> close() {
    _gelocationSubscription?.cancel();
    return super.close();
  }
}

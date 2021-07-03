part of 'geolocation_bloc.dart';

abstract class GeolocationEvent extends Equatable {
  const GeolocationEvent();

  @override
  List<Object> get props => [];
}

class LoadGelocation extends GeolocationEvent {}

class UpdateGelocation extends GeolocationEvent {
  final Position position;

  UpdateGelocation({required this.position});
  @override
  List<Object> get props => [position];
}

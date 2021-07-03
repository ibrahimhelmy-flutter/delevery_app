import 'package:geolocator/geolocator.dart';

abstract class BaseGeolocatioRepository {
  Future<Position?> getCurrentLocation() async {}
}

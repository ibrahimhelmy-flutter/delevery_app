import 'package:delevery_app/repositories/gelocation/base_geolocation_repositiry.dart';
import 'package:geolocator/geolocator.dart';

class GelocationRepository extends BaseGeolocatioRepository {
  GelocationRepository();
  @override
  Future<Position> getCurrentLocation() async {
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }
}

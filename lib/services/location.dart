import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;

  Future<void> getlocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();

      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print("Error: Location not Got");
    }
  }
}

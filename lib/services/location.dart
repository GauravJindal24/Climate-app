import 'package:geolocator/geolocator.dart';

class Location {
  double logitude;
  double latitude;

  Future<void> getmylocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      logitude = position.longitude;
      latitude = position.latitude;
    } catch (e) {
      print(e);
    }
  }
}

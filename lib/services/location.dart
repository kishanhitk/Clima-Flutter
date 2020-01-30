import 'package:geolocator/geolocator.dart';

class Location {
  double lat;
  double lon;
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      lat = position.latitude;
      lon = position.longitude;
    } catch (e) {
      print('e');
    }
  }
}

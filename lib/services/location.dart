import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class LocationApp extends StatelessWidget {
  Future<List<double>> _locationApp() async {
    double latitude, longitude;
    List<double> locationStudent = [];
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        //return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        //return;
      }
    }
    _locationData = await location.getLocation();

    latitude = _locationData.latitude!;
    longitude = _locationData.longitude!;

    locationStudent = [latitude, longitude];
    print(" ________________________");
    print("| Latitude:  " +
        latitude.toString() +
        " |\n| Longitude: " +
        longitude.toString() +
        " |");
    print("|________________________|");
    return locationStudent;
  }

  @override
  Widget build(BuildContext context) {
    List<double> locationStudent = [];
    return Container(
      child: Center(
        child: Container(
          child: FlatButton(
            color: Colors.cyan,
            onPressed: () {
              locationStudent = _locationApp() as List<double>;
              //_openApp();
            },
            child: Text(""),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:feather_trails/widgets/location_results.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(30.4145, -91.1783);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
        Positioned(
          top: 50.0,
          left: 15.0,
          right: 15.0,
          child: Opacity(
            opacity: 0.7,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Where do you want to go?',
                  prefixIcon: Icon(Icons.location_on_outlined, color: Colors.black),
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  // Handle search here
                },
              ),
            ),
          ),
        ),
        Positioned(
          top: 120.0,
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Locations(),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:feather_trails/location_results.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;

class MapScreen extends StatefulWidget {
  final PageStorageBucket bucket;

  const MapScreen({required this.bucket});
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(30.4145, -91.1783);

  final _places = GoogleMapsPlaces(apiKey: 'AIzaSyDXo20JjUHpFsttej--RYSHSyRhwrGCrRw');

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  List<PlacesSearchResult> placesList = [];
  final TextEditingController _searchController = TextEditingController();

  Future<void> searchNearby(String query, LatLng location) async {
    try {
      final result = await _places.searchNearbyWithRadius(
        Location(lat: 30.4145, lng: -91.1783),
        5000,
        keyword: query,
      );
      if (result.status == "OK") {
        setState(() {
          placesList = result.results;
        });
      } else {
        throw Exception(result.errorMessage);
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  Future<void> searchPlaces(String query) async {
    try {
      final result = await _places.searchByText(
        query,
      );
      if (result.status == "OK") {
        setState(() {
          placesList = result.results;
        });
      } else {
        throw Exception(result.errorMessage);
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  bool showLocations = false;

  void submitSearch() async {
    String query = _searchController.text.trim();
    if (query.isNotEmpty) {
      if (query.toLowerCase().contains("near me") || query.toLowerCase().contains("nearby")) {
        await searchNearby(query, _center); 
      } else {
        await searchPlaces(query);
      }
      if (placesList.isNotEmpty) {
        setState(() {
          showLocations = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return PageStorage(
      bucket: widget.bucket,
      key: const PageStorageKey('MapPage'),
      child: Scaffold(
        body: Stack(
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
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: 'Where do you want to go?',
                      prefixIcon: Icon(Icons.location_on_outlined, color: Colors.black),
                      border: InputBorder.none,
                    ),
                    onSubmitted: (value) {
                      submitSearch();
                    },
                  ),
                ),
              ),
            ),
            if (showLocations) // Conditionally load the Locations widget
              Positioned(
                top: 120.0,
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Locations(
                    placesList: placesList,
                    context: context,
                  ),
              ),
          ],
        ),
        bottomNavigationBar: my_nav_bar.NavigationBar(
          selectedIndex: 0,
          onDestinationSelected: (int index) {
            setState(() {
              if (index == 0) {
                Navigator.pushNamed(context, '/');
              }
              if (index == 1) {
                Navigator.pushNamed(context, '/itineraryPage');
              }
              if (index == 2) {
                Navigator.pushNamed(context, '/socialPage');
              }
              if (index == 3) {
                Navigator.pushNamed(context, '/profilePage');
              }
            });
          },
        ),
      ),
    );
  }
}
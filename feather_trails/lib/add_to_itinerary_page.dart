import 'package:flutter/material.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;
import 'package:google_maps_webservice/places.dart';

class AddtoItineraryPage extends StatefulWidget {
  final PlacesSearchResult? selectedPlace;

  const AddtoItineraryPage({this.selectedPlace});
  @override
  AddtoItineraryPageState createState() => AddtoItineraryPageState();
}

class AddtoItineraryPageState extends State<AddtoItineraryPage> {
  PlacesSearchResult? selectedPlace;

  @override
  void initState() {
    super.initState();
    selectedPlace = widget.selectedPlace; // Update this line
  }

  Widget build(BuildContext context) {
    String imageUrl = '';

    // Check if selectedPlace is not null and has photos
    if (selectedPlace != null && selectedPlace!.photos.isNotEmpty) {
      String photoReference = selectedPlace!.photos[0].photoReference;
      imageUrl =
      'https://maps.googleapis.com/maps/api/place/photo?maxwidth=300&photoreference=$photoReference&key=AIzaSyDXo20JjUHpFsttej--RYSHSyRhwrGCrRw';
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add to Itinerary',
          style: TextStyle(
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.bold, // Set the font weight
          ),
        ),
      ),

      bottomNavigationBar: my_nav_bar.NavigationBar(
        selectedIndex: 1, // Set the appropriate index for the NewItineraryPage
        onDestinationSelected: (int index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              Navigator.pushNamed(context, '/itineraryPage');
              break;
            case 2:
              Navigator.pushNamed(context, '/socialPage');
              break;
            case 3:
              Navigator.pushNamed(context, '/profilePage');
              break;
          }
        },
      ),
    );
  }
}

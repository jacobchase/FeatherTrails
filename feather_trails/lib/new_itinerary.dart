import 'package:flutter/material.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;
import 'package:google_maps_webservice/places.dart';

class NewItineraryPage extends StatefulWidget {
  final PlacesSearchResult? selectedPlace;

  const NewItineraryPage({this.selectedPlace});
  @override
  NewItineraryPageState createState() => NewItineraryPageState();
}

class NewItineraryPageState extends State<NewItineraryPage> {
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
        title: const Text('New Itinerary',
        style: TextStyle(
        fontFamily: 'Quicksand',
        fontWeight: FontWeight.bold, // Set the font weight
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:Column( //this guy overflows
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black)),
              ),
              child: const TextField(
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                ),
                decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle: TextStyle(
                    color: Color(0xFF58636A),
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0,
                  ),
                  border: InputBorder.none,

                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black)),
                    ),
                    child: const TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w600,
                        fontSize: 24.0,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Start Date',
                        hintStyle: TextStyle(
                          color: Color(0xFF58636A),
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                const Text(
                  '-',
                  style: TextStyle(fontSize: 24.0),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black)),
                    ),
                    child: const TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w600,
                        fontSize: 24.0,
                      ),

                      decoration: InputDecoration(
                        hintText: 'End Date',
                        hintStyle: TextStyle(
                          color: Color(0xFF58636A),
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                        ),
                        border: InputBorder.none,

                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30.0),
            if (selectedPlace !=
                null) // Conditionally load the Location widget if navigated from MapScreen
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xFFE8D9CC),
                ),
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                      child: Image.network(
                        imageUrl,
                        width: 130,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          selectedPlace!.name,
                          style: const TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                          color: Color(0xFF58636A)
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            const SizedBox(
                height:
                    30.0), // Add some space between the Row and the new Text widget

            const Text(
              'Recommended Stops:',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFFC93C13)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 48)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: const Text(
                    'Create New',
                    style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 20.0,
                    ),
                ),
              ),
            ),
          ],
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

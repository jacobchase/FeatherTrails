import 'package:flutter/material.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;
import 'buildItineraryCard.dart';

class Itinerary {
  final String name;
  final String locations;
  final String dateRange;
  final String numberOfPlaces;
  final String imageUrl;

  Itinerary({
    required this.name,
    required this.locations,
    required this.dateRange,
    required this.numberOfPlaces,
    this.imageUrl = '',
  });
}

class ItineraryPage extends StatefulWidget {
  @override
  ItineraryPageState createState() => ItineraryPageState();
}

class ItineraryPageState extends State<ItineraryPage> {
  int currentPageIndex = 1;

  @override
  @override
  Widget build(BuildContext context) {
    Itinerary dummyItinerary = Itinerary(
        name: 'Sample Itinerary',
        locations: 'Starting Location - Destination',
        dateRange: 'Start date - end date',
        numberOfPlaces: '5', // Replace with the actual number of places
        imageUrl:
            'https://images.unsplash.com/photo-1589405858862-2ac9cbb41321?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8fA%3D%3D');
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const Text(''),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/NewItinerary');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFC93C13)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    minimumSize: MaterialStateProperty.all(const Size(360, 48)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Text('New Itinerary +'),
                ),
              ),
              ItineraryCard(context: context, itinerary: dummyItinerary),
            ],
          ),
        ),
      ),
      bottomNavigationBar: my_nav_bar.NavigationBar(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
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

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
        name: "The Smith's Family Vacation" ,
        locations: 'Baton Rouge, LA - San Antonio, TX',
        dateRange: '12/20/23 - 12/24/23',
        numberOfPlaces: '17', // Replace with the actual number of places
        imageUrl:
            'https://lh3.googleusercontent.com/p/AF1QipOU4Pvbwmqau0zl5oPT7Hl4ilyMMgK52yA4aoOq=s0');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Itineraries',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
          ),
        ),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
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

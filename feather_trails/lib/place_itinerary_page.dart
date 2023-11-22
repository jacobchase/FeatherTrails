import 'package:flutter/material.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;

class PlaceItineraryPage extends StatefulWidget {
  @override
  PlaceItineraryPageState createState() => PlaceItineraryPageState();
}

class PlaceItineraryPageState extends State<PlaceItineraryPage> {
  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Itinerary 1',
          style:  TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'Quicksand',
        ),),
      ),
      body: const Center(
        child: Text('This will be Itinerary 1'),
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
          }
        },
      ),
    );
  }
}

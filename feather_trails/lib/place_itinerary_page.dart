import 'package:flutter/material.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;
import 'intinerary_page.dart' show Itinerary;

class PlaceItineraryPage extends StatefulWidget {
  final PageStorageBucket bucket;
  final Itinerary? selectedItinerary;

  const PlaceItineraryPage({required this.bucket, this.selectedItinerary});
  @override
  PlaceItineraryPageState createState() => PlaceItineraryPageState();
}

class PlaceItineraryPageState extends State<PlaceItineraryPage>
    with AutomaticKeepAliveClientMixin {
  int currentPageIndex = 1;

  Itinerary? selectedItinerary;
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    selectedItinerary = widget.selectedItinerary; // Update this line
  }
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return PageStorage(
      bucket: widget.bucket,
      key: const PageStorageKey('PlaceItineraryPage'),
      child: Scaffold(
        appBar: AppBar(
          title: Text(selectedItinerary!.name),
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
      ),
    );
  }
}

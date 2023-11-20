import 'package:flutter/material.dart';
import 'itin_cover.dart';
import 'itin_item.dart';
import 'itin_details.dart';

class PlaceItineraryPage extends StatelessWidget {
  final List<ItinCover> itinList;

  PlaceItineraryPage({required this.itinList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Itineraries',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
      ),
      ),
        actions: [
          Row(
            children: [
              IconButton(
                  icon:Icon(Icons.bookmark_border),
                onPressed:() {

                }
              )
            ]

          )

        ]
    ),
      body: ListView.builder(
        itemCount: itinList.length,
        itemBuilder: (context, index) {
          ItinCover itinerary = itinList[index];
          return ListTile(
            title: Text(itinerary.itinTitle),
            subtitle: Text('Start: ${itinerary.startPlace} | End: ${itinerary.endPlace}'),
            onTap: () {
              // Navigate to a detailed view of the itinerary when tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItinDetails(itin: itinerary),
                ),
              );
            },
          );
        },
      ),
    );
  }
}



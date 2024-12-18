import 'package:feather_trails/place_itinerary_page.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_maps_webservice/places.dart';
import 'intinerary_page.dart' show Itinerary;

class ItineraryCard extends StatelessWidget {
  // final PlacesSearchResult place;
  // const ItineraryCard({required this.place});
  final BuildContext context;
  final Itinerary itinerary;
  const ItineraryCard({required this.context, required this.itinerary});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlaceItineraryPage(
                  //selectedItinerary: itinerary,    //
                ),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              itinerary.imageUrl,
              width: 350.0,
              height: 350.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            color: Color(0xFFE8D9CC),
          ),
          width: 350.0,
          height: 90.0,
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10.0),
                child: const Icon(Icons.location_on_outlined, size: 30.0,color: Color(0xFF58636A),),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itinerary.name,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                        color: Color(0xFF58636A),
                      ),
                    ),
                    Text(
                      itinerary.locations,
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Quicksand',
                        color: Color(0xFF58636A),
                      ),
                    ),
                    Text(
                      itinerary.dateRange,
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Quicksand',
                        color: Color(0xFF58636A),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    iconSize: 20,
                    onPressed: () {
                      Navigator.pushNamed(context, '/itineraryEditPage');
                    },
                    icon: const Icon(Icons.edit_outlined, color: Color(0xFF58636A),),
                  ),
                  Text(
                    itinerary.numberOfPlaces + ' places',
                    style: const TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Quicksand',
                      color: Color(0xFF58636A),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

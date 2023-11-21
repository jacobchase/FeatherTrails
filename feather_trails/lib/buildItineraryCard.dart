import 'package:flutter/material.dart';
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
    // String photoReference = place.photos[0].photoReference;
    // String imageUrl =
    //     'https://maps.googleapis.com/maps/api/place/photo?maxwidth=300&photoreference=$photoReference&key=';
    return Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/placeItinerary');
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
                child: const Icon(Icons.location_on_outlined, size: 30.0),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itinerary.name,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                    Text(
                      itinerary.locations,
                      style: TextStyle(
                        fontSize: 12.0,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                    Text(
                      itinerary.dateRange,
                      style: TextStyle(
                        fontSize: 12.0,
                        fontFamily: 'Quicksand',
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
                      onPressed: () {},
                      icon: const Icon(Icons.edit_outlined),
                  ),
                  Text(
                    itinerary.numberOfPlaces + ' places',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Quicksand',
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
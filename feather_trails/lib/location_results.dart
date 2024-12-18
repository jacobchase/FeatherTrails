import 'package:flutter/material.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:feather_trails/new_itinerary.dart';

class Locations extends StatelessWidget {
  final List<PlacesSearchResult> placesList;
  final BuildContext context;

  Locations({required this.placesList, required this.context});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        color: Color(0xB3FFFFFF),
      ),
      child: ListView.separated(
        padding: const EdgeInsets.all(30),
        itemCount: placesList.length,
        itemBuilder: (context, index) {
          return locationCard(placesList[index]);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 30); // Adjust the height as needed
        },
      ),
    );
  }


  Widget locationCard(PlacesSearchResult place) {
    String photoReference = place.photos[0].photoReference;
    String imageUrl = 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=300&photoreference=$photoReference&key=AIzaSyDXo20JjUHpFsttej--RYSHSyRhwrGCrRw';
    return Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            imageUrl,
            width: 245.0,
            height: 245.0,
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(6),
            bottomRight: Radius.circular(6),
          ),
          child: Container(
            color: Colors.white,
            width: 245.0,
            height: 90.0,
            padding: const EdgeInsets.all(20.0),
            child: Row(
                children: <Widget>[
                  Container(
                  padding: EdgeInsets.only(right: 20.0),
                  child: const Icon(

                    Icons.location_on_outlined,
                    size: 30.0,
                    color: Color(0xFF58636A)
                    ),
                  ),
                  Flexible(
                    child: Text(
                      place.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Quicksand',
                        color: Color(0xFF58636A),
                        fontSize: 18.0,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2, // Adjust as needed
                    ),
                  ),
                ]
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Column(
            children: <Widget>[
              RawMaterialButton(
                onPressed: () { Navigator.pushNamed(context, '/addtoItineraryPage');},
                elevation: 0,
                fillColor: const Color(0xFFE8D9CC),
                constraints: const BoxConstraints.tightFor(
                  width: 70.0,
                  height: 70.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Icon(Icons.add, color: Color(0xFF58636A)),
              ),
              const SizedBox(height: 20),
              RawMaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewItineraryPage(
                        //bucket: PageStorageBucket(),
                        selectedPlace: place,
                      ),
                    ),
                  );
                },
                elevation: 0,
                fillColor: const Color(0xFFE8D9CC),
                constraints: const BoxConstraints.tightFor(
                  width: 70.0,
                  height: 70.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Icon(Icons.edit_square,color: Color(0xFF58636A)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
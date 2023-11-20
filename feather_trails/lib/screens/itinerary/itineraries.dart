import 'package:flutter/material.dart';

class PlaceItineraryPage extends StatelessWidget {


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

    );
  }
}



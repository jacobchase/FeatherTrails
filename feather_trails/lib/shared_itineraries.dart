import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Itineraries',
      home: SharedItinerariesPage(),
    );
  }
}

class SharedItinerariesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Itineraries',
          style:  TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
          ),),
      ),
      body: const Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You don\'t have any shared itineraries at the moment.',
              style:  TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: 'Quicksand',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

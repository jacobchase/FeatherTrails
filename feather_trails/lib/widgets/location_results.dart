import 'package:flutter/material.dart';

class Locations extends StatelessWidget {
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
      child: ListView(
        padding: const EdgeInsets.all(30), 
        children: <Widget>[
              locationCard('Blue Rouge Aquarium', 'https://lh5.googleusercontent.com/p/AF1QipM_lQSo7DjW0XmS9jdulL8Tp84ej2HuUk7ygUw2=w408-h306-k-no'),
              locationCard('BREC\'s Baton Rouge Zoo', 'https://lh5.googleusercontent.com/p/AF1QipM_lQSo7DjW0XmS9jdulL8Tp84ej2HuUk7ygUw2=w408-h306-k-no'),
              locationCard('Oak Hills Place', 'https://lh5.googleusercontent.com/p/AF1QipM_lQSo7DjW0XmS9jdulL8Tp84ej2HuUk7ygUw2=w408-h306-k-no'),
        ],
      ),
    );
  }

  Widget locationCard(String locationName, String imageUrl) {
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
                const Icon(Icons.location_on_outlined),
                Text(locationName),
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
                onPressed: () {},
                elevation: 0,
                fillColor: const Color(0xFFE8D9CC),
                constraints: const BoxConstraints.tightFor(
                  width: 70.0,
                  height: 70.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 20),
              RawMaterialButton(
                onPressed: () {},
                elevation: 0,
                fillColor: const Color(0xFFE8D9CC),
                constraints: const BoxConstraints.tightFor(
                  width: 70.0,
                  height: 70.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Icon(Icons.edit_square),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
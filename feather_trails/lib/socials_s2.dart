import 'package:flutter/material.dart';

class Socials2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Nashville Girls' Trip",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFFC93C13),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12.0),
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              decoration: BoxDecoration(
                color: const Color(0xFFB2B7AE),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text(
                "This is our activities from our weekend trip in Nashville. It was so much fun! -- Traveled by @user2222",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Quicksand-Bold',
                ),
              ),
            ),
            const Text(
              "Food/Dining",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            _buildItemWithRating(
              "The Stillery",
              "https://nashvilleguru.com/officialwebsite/wp-content/uploads/2021/07/Downtown-SoBro-Nashville-2021-403-1024x683.jpg",
              4.5,
            ),
            _buildItemWithRating(
              "Biscuit Love",
              "https://nashvilleguru.com/officialwebsite/wp-content/uploads/2015/01/Biscuit-Love-Nashville-4.jpg",
              5.0,
            ),
            _buildItemWithRating(
              "Taco Mamacita",
              "https://images.squarespace-cdn.com/content/v1/5dc42d385bd17557bf1a878b/1573141799474-JJRIHRNUSIK90G3BEJI4/tacoNash.jpg",
              4.5,
            ),
            _buildItemWithRating(
              "Southern Steak and Oyster",
              "https://images.squarespace-cdn.com/content/v1/5ca281aefd6793726b1af235/1556743870349-YBDKM1U76FJASDJ95BSM/NathanZucker_1392.jpg?format=2500w",
              4.0,
            ),
            _buildItemWithRating(
              "Frothy Monkey",
              "https://nashvilleguru.com/officialwebsite/wp-content/uploads/2021/06/Downtown-SoBro-Nashville-2021-163-1024x683.jpg",
              4.0,
            ),
            _buildItemWithRating(
              "Edley's Bar-B-Que",
              "https://nashvilleguru.com/officialwebsite/wp-content/uploads/2021/05/12-South-Nashville-2021-155-1024x683.jpg",
              5.0,
            ),
            _buildItemWithRating(
              "Husk",
              "https://whiskyadvocate.com/get/files/image/galleries/HUSK-Nashville-Exterior-2-HERO.png",
              3.0,
            ),
            const Text(
              "Activities",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            _buildItemWithRating(
              "Broadway Street",
              "https://belleairmansion.com/wp-content/uploads/2021/05/shutterstock_518798149.jpg",
              4.5,
            ),
            _buildItemWithRating(
              "Mural Tour Nashville",
              "https://mlclwtesbrn2.i.optimole.com/w:1000/h:638/q:mauto/f:best/https://www.travelbybrit.com/wp-content/uploads/2022/09/IMG_8345_jpg.jpg",
              4.5,
            ),
            _buildItemWithRating(
              "Live Music at Bluebird Cafe",
              "https://bloximages.chicago2.vip.townnews.com/abqjournal.com/content/tncms/assets/v3/editorial/7/96/796111c8-e651-52a0-9160-0f10ceb0d8bc/6481661a4617f.image.jpg?crop=1885%2C990%2C0%2C45&resize=1200%2C630&order=crop%2Cresize",
              5.0,
            ),
            _buildItemWithRating(
              "Nashville Farmer's Market",
              "https://www.trolleytours.com/wp-content/uploads/2016/06/nashville-farmers-market-aerial.jpg",
              5.0,
            ),
            _buildItemWithRating(
              "Cheekwood Estate and Gardens",
              "https://cheekwood.org/wp-content/uploads/Mansion_exterior_DJI_0239-Pano-Edit-2-1.jpg",
              4.0,
            ),
            const Text(
              "Shopping",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            _buildItemWithRating(
              "12 South Neighborhood",
              "https://www.tennessean.com/gcdn/-mm-/bfed09a733bce9a6dbb49982e953ce663b5956f3/c=0-21-400-247/local/-/media/2016/07/08/TennGroup/Nashville/636035760708081269-12south.jpg?width=400&height=226&fit=crop&format=pjpg&auto=webp",
              3.0,
            ),
            _buildItemWithRating(
              "The Gulch",
              "https://www.trolleytours.com/wp-content/uploads/2016/06/nashville-the-gulch.jpg",
              4.0,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildItemWithRating(String itemName, String imageUrl, double rating) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      color: const Color(0xFFE8D9CC),
    ),
    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
    child: Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6),
                bottomLeft: Radius.circular(6),
              ),
              child: Image.network(
                imageUrl,
                width: 130,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemName,
                      style: const TextStyle(),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8.0),
                    _RatingStars(rating: rating),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

// Define a constant widget for the Rating stars
class _RatingStars extends StatelessWidget {
  final double rating;

  const _RatingStars({required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => Icon(
          index < rating.floor()
              ? Icons.star
              : (index == rating.floor() && rating % 1 != 0)
                  ? Icons.star_half
                  : Icons.star_border,
          color: const Color(0xFFDE7728),
        ),
      ),
    );
  }
}

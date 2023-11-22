import 'package:flutter/material.dart';

class Socials1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Smith Family Vacation",
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
                "This is an itinerary of our weekend trip to Houston. Hope you enjoy it as much as we did! -- Traveled by @user1111",
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
              "Waffle House",
              'https://www.wafflehouse.com/wp-content/themes/wahotheme/assets/heros/waho-mobile@2x.jpg',
              1.5,
            ),
            _buildItemWithRating(
              "Pappadeaux's Seafood Kitchen",
              "https://s.hdnux.com/photos/53/01/64/11279670/4/1200x0.jpg",
              4.0,
            ),
            _buildItemWithRating(
              "Cloud 10 Creamery",
              "https://images.squarespace-cdn.com/content/v1/59de6d50268b967f32bb0e30/1508194534873-JAW427JN6JYQMD7WKJNA/Cloud10-Banner.png?format=2500w",
              5.0,
            ),
            _buildItemWithRating(
              "Common Bond Café & Bakery",
              "https://images.getbento.com/accounts/d41316ea7dde46705e6b9864932f0f04/media/images/63868CB-OTG-WEB-63_1.jpg?w=1200&fit=crop&auto=compress,format&h=600",
              4.5,
            ),
            _buildItemWithRating(
              "The Raven Grill",
              "https://communityimpact.com/uploads/images/2023/03/17/247209.jpeg",
              5.0,
            ),
            _buildItemWithRating(
              "Brennan's of Houston",
              "https://images.getbento.com/accounts/1b7228f836b14ac8e6bbf596b273e439/media/images/72367exterior.jpg?w=1800&fit=max&auto=compress,format&h=1800",
              3.5,
            ),
            _buildItemWithRating(
              "Blacksmith",
              "https://www.epicurious.com/images/articlesguides/diningtravel/culinarytravel/blacksmithhouston_612.jpg",
              4.0,
            ),
            _buildItemWithRating(
              "High & Dry Rum Bar",
              "https://d2xrc96hxzhrpb.cloudfront.net/assets/tiki-bars/1012658/high-dry-A.jpg?dateUpdated=2023-09-05T11:07:21+10:00",
              3.5,
            ),
            const Text(
              "Activities",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            _buildItemWithRating(
              "Discovery Green",
              "https://pbs.twimg.com/profile_images/1100810667597144064/vQVUybXu_400x400.png",
              4.5,
            ),
            _buildItemWithRating(
              "Houston Museum District",
              "https://www.omnihotels.com/-/media/images/hotels/houprk/activities/houprk-omni-houston-museum-district.jpg?h=660&la=en&w=1170",
              4.0,
            ),
            _buildItemWithRating(
              "Buffalo Bayou Park",
              "https://365thingsinhouston.com/wp-content/uploads/2022/05/5-must-do-things-in-buffalo-bayou-park-water-works-concert.jpg",
              3.0,
            ),
            _buildItemWithRating(
              "Space Center Houston",
              "https://spacecenter.org/wp-content/uploads/2023/04/event-schsupernova1-1024x560.jpg",
              5.0,
            ),
            _buildItemWithRating(
              "Minute Maid Park",
              "https://media.bizj.us/view/img/12503702/041923cf-team-storeeta00209*1200xx5760-3240-0-2263.jpg",
              3.0,
            ),
            const Text(
              "Shopping",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            _buildItemWithRating(
              "The Galleria of Houston",
              "https://assets.simon.com/content/SEARCH/805.jpg",
              4.5,
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

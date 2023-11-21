import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feather Trails',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFC93C13),
          secondary: const Color(0xFFE8D9CC),
          background: const Color(0xFFFFFFFFFF),
        ),
      ),
      initialRoute: '/Login',
      routes: {
        '/': (context) => MyHomePage(),
        '/placeItinerary': (context) => PlaceItineraryPage(),
        '/Login': (context) => Login(),
        '/socials1': (context) => Socials1(),
        '/socials2': (context) => Socials2(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: const Color.fromARGB(0, 255, 255, 255),
        backgroundColor: Theme.of(context).colorScheme.primary,
        height: 90,
        selectedIndex: currentPageIndex,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.map_outlined,
              color: Color(0xFFFFFFFF),
              size: 36.0,
            ),
            icon: Icon(
              Icons.map_outlined,
              color: Color(0xFFB2B7AE),
              size: 36.0,
            ),
            label: 'Map',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.list,
              color: Color(0xFFFFFFFF),
              size: 36.0,
            ),
            icon: Icon(
              Icons.list,
              color: Color(0xFFB2B7AE),
              size: 36.0,
            ),
            label: 'Itinerary',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.language,
              color: Color(0xFFFFFFFF),
              size: 36.0,
            ),
            icon: Icon(
              Icons.language,
              color: Color(0xFFB2B7AE),
              size: 36.0,
            ),
            label: 'Social',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.person_outlined,
              color: Color(0xFFFFFFFF),
              size: 36.0,
            ),
            icon: Icon(
              Icons.person_outlined,
              color: Color(0xFFB2B7AE),
              size: 36.0,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          child: const Text('Page 1'),
        ),
        Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const Text(''),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Add your button action here
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                        const Size(double.infinity, 48)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Text('New Itinerary +'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/placeItinerary');
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                        const Size(double.infinity, 150)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Text('Itinerary 1'),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const Text(''),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Social"),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/socials1');
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                        const Size(double.infinity, 150)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Text('Smith Family Vacation'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/socials2');
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                        const Size(double.infinity, 150)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Text("Nashville Girls' Trip"),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(58.0),
                child: CircleAvatar(
                  radius: 58, // Image radius
                  backgroundImage: NetworkImage(
                      'https://www.thingsguyana.com/wp-content/uploads/2020/01/1649px-Toco_Toucan_Ramphastos_toco_in_Papaya_Tree_Carica_papaya_28997424215-scaled.jpg',
                      scale: 210),
                ),
              ),
              const Text(
                '@user0000',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                      const Size(320, 48),
                    )),
                    child: const Text('Account')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                      const Size(320, 48),
                    )),
                    child: const Text('Settings')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                      const Size(320, 48),
                    )),
                    child: const Text('Privacy')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                      const Size(320, 48),
                    )),
                    child: const Text('Notifications')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                      const Size(320, 48),
                    )),
                    child: const Text('Shared Itineraries')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Login');
                  },
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                    const Size(320, 48),
                  )),
                  child: const Text('Logout'),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: const Text('Place Itinerary Here'),
        )
      ][currentPageIndex],
    );
  }
}

class PlaceItineraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Itinerary 1'),
      ),
      body: const Center(
        child: Text('This will be Itinerary 1'),
      ),
    );
  }
}

class Socials1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Smith Family Vacation")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              " This is an itinerary of our weekend trip to Houston.  Hope you enjoy it as much as we did! -- Traveled by @user1111",
              textAlign: TextAlign.center,
            ),
            Text(
              "Food/Dining",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      'https://www.wafflehouse.com/wp-content/themes/wahotheme/assets/heros/waho-mobile@2x.jpg',
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Waffle House",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://s.hdnux.com/photos/53/01/64/11279670/4/1200x0.jpg", //pappadeaux
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Pappadeaux's Seafood Kitchen",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://images.squarespace-cdn.com/content/v1/59de6d50268b967f32bb0e30/1508194534873-JAW427JN6JYQMD7WKJNA/Cloud10-Banner.png?format=2500w", //Cloud 10 Creamery
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Cloud 10 Creamery",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://images.getbento.com/accounts/d41316ea7dde46705e6b9864932f0f04/media/images/63868CB-OTG-WEB-63_1.jpg?w=1200&fit=crop&auto=compress,format&h=600", //Common Bond Cafe
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Common Bond Café & Bakery",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://communityimpact.com/uploads/images/2023/03/17/247209.jpeg", //Raven Grill
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "The Raven Grill",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://images.getbento.com/accounts/1b7228f836b14ac8e6bbf596b273e439/media/images/72367exterior.jpg?w=1800&fit=max&auto=compress,format&h=1800", //Brennan's of Houston
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Brennan's of Houston",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://www.epicurious.com/images/articlesguides/diningtravel/culinarytravel/blacksmithhouston_612.jpg", //Blacksmith
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Blacksmith",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://d2xrc96hxzhrpb.cloudfront.net/assets/tiki-bars/1012658/high-dry-A.jpg?dateUpdated=2023-09-05T11:07:21+10:00", //put image URL here
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "High & Dry Rum Bar",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Activities",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://pbs.twimg.com/profile_images/1100810667597144064/vQVUybXu_400x400.png", //Discovery Green
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Discovery Green",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://www.omnihotels.com/-/media/images/hotels/houprk/activities/houprk-omni-houston-museum-district.jpg?h=660&la=en&w=1170", //Museum District
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Houston Museum District",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://365thingsinhouston.com/wp-content/uploads/2022/05/5-must-do-things-in-buffalo-bayou-park-water-works-concert.jpg", //Buffalo Bayou
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Buffalo Bayou Park",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://spacecenter.org/wp-content/uploads/2023/04/event-schsupernova1-1024x560.jpg", //Space Center
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Space Center Houston",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://media.bizj.us/view/img/12503702/041923cf-team-storeeta00209*1200xx5760-3240-0-2263.jpg", //Minute Maid Park
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Minute Maid Park",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Shopping",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://assets.simon.com/content/SEARCH/805.jpg", //The Galleria
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "The Galleria of Houston",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Socials2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nashville Girls' Trip")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              " This is our activities from our weekend trip in Nashville. It was so much fun! -- Traveled by @user2222",
              textAlign: TextAlign.center,
            ),
            const Text(
              "Food/Dining",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      'https://nashvilleguru.com/officialwebsite/wp-content/uploads/2021/07/Downtown-SoBro-Nashville-2021-403-1024x683.jpg',
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "The Stillery",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://nashvilleguru.com/officialwebsite/wp-content/uploads/2015/01/Biscuit-Love-Nashville-4.jpg", //pappadeaux
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Biscuit Love",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://images.squarespace-cdn.com/content/v1/5dc42d385bd17557bf1a878b/1573141799474-JJRIHRNUSIK90G3BEJI4/tacoNash.jpg", //Cloud 10 Creamery
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Taco Mamacita",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://images.squarespace-cdn.com/content/v1/5ca281aefd6793726b1af235/1556743870349-YBDKM1U76FJASDJ95BSM/NathanZucker_1392.jpg?format=2500w", //Common Bond Cafe
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Southern Steak and Oyster",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://nashvilleguru.com/officialwebsite/wp-content/uploads/2021/06/Downtown-SoBro-Nashville-2021-163-1024x683.jpg", //Raven Grill
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Frothy Monkey",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://nashvilleguru.com/officialwebsite/wp-content/uploads/2021/05/12-South-Nashville-2021-155-1024x683.jpg", //Brennan's of Houston
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Edley's Bar-B-Que",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://whiskyadvocate.com/get/files/image/galleries/HUSK-Nashville-Exterior-2-HERO.png", //Blacksmith
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Husk",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "Activities",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://belleairmansion.com/wp-content/uploads/2021/05/shutterstock_518798149.jpg", //Discovery Green
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Broadway Street",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://mlclwtesbrn2.i.optimole.com/w:1000/h:638/q:mauto/f:best/https://www.travelbybrit.com/wp-content/uploads/2022/09/IMG_8345_jpg.jpg", //Museum District
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Mural Tour Nashville",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://bloximages.chicago2.vip.townnews.com/abqjournal.com/content/tncms/assets/v3/editorial/7/96/796111c8-e651-52a0-9160-0f10ceb0d8bc/6481661a4617f.image.jpg?crop=1885%2C990%2C0%2C45&resize=1200%2C630&order=crop%2Cresize", //Buffalo Bayou
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Live Music at Bluebird Cafe",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://www.trolleytours.com/wp-content/uploads/2016/06/nashville-farmers-market-aerial.jpg",
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Nashville Farmer's Market",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://cheekwood.org/wp-content/uploads/Mansion_exterior_DJI_0239-Pano-Edit-2-1.jpg", //Minute Maid Park
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Cheekwood Estate and Gardens",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Shopping",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://www.tennessean.com/gcdn/-mm-/bfed09a733bce9a6dbb49982e953ce663b5956f3/c=0-21-400-247/local/-/media/2016/07/08/TennGroup/Nashville/636035760708081269-12south.jpg?width=400&height=226&fit=crop&format=pjpg&auto=webp", //The Galleria
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "12 South Neighborhood",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFE8D9CC),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: Image.network(
                      "https://www.trolleytours.com/wp-content/uploads/2016/06/nashville-the-gulch.jpg", //The Galleria
                      width: 130,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "The Gulch",
                        style: const TextStyle(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Feather_Trails_Logo.jpg',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Go to Homepage'),
            ),
          ],
        ),
      ),
    );
  }
}

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
          child: const Text('Page 3'),
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

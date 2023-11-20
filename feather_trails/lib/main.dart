import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_webservice/places.dart';
import 'screens/map_screen.dart';
import 'screens/itinerary/itineraries.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Feather Trails',
      theme: ThemeData(
          canvasColor: Colors.transparent,

          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xFFC93C13),
            secondary: const Color(0xFFE8D9CC),
            background: const Color.fromARGB(255, 255, 255, 255),
          ),
          textTheme:
              GoogleFonts.quicksandTextTheme(Theme.of(context).textTheme,
          ),
      ),

      initialRoute: '/Login',
      routes: {
        '/': (context) => MyHomePage(),
        '/placeItinerary': (context) => PlaceItineraryPage(),
        '/Login': (context) => Login(),
        '/ForgotPassword': (context) => ForgotPassword(),
        '/SignUp': (context) => SignUp(),
        '/NewItinerary': (context) => NewItinerary(),
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
      extendBody: true,
    bottomNavigationBar: Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(6.0),
            topRight: Radius.circular(6.0),
          ),
        ),
        child: NavigationBar(
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
      ),
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          child: MapScreen(),
        ),
        Container(
          alignment: Alignment.center,
          child: PlaceItineraryPage(),
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
               Text(
                '@user0000',
                textAlign: TextAlign.center,
                style: GoogleFonts.quicksand(
                  fontSize: 24.0, fontWeight: FontWeight.bold,
                ),
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

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Image.asset(
                'assets/images/Feather_Trails_Logo_Trans.png',
                width: 325,
                height: 325,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                'FeatherTrails',
                style: GoogleFonts.quicksand(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle:TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  hintText: 'Enter your email',
                  hintStyle:TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  contentPadding: EdgeInsets.only(bottom: 8.0),
                  prefixIcon: Icon(Icons.email, color: Color(0xFF58636A)),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle:TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  hintText: 'Enter your password',
                  hintStyle:TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  contentPadding: EdgeInsets.only(bottom: 12.0),
                  prefixIcon: Icon(Icons.key, color: Color(0xFF58636A)),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFFC93C13)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 48)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                ),
                child: Text(
                  'Sign in',
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold
                  ),

                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/ForgotPassword');
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontFamily: 'Quicksand', fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 115.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/SignUp');
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          fontFamily: 'Quicksand', fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 170.0),
              child: Text(
                'Forgot password?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'Quicksand',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Enter the email associated with your account to request a password reset.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Quicksand',
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  contentPadding: EdgeInsets.only(bottom: 8.0),
                  prefixIcon: Icon(Icons.email, color: Color(0xFF58636A)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Login');
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFC93C13)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                minimumSize: MaterialStateProperty.all(const Size(360, 48)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              child: const Text('Submit'),
            ),
            const SizedBox(height: 110.0),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Image.asset(
                'assets/images/Feather_Trails_Logo_Trans.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome, ',
              style: TextStyle(
                fontSize: 40.0,
                fontFamily: 'Quicksand',
              ),
            ),
            RichText(
              text: const TextSpan(
                text: 'Traveler',
                style: TextStyle(
                  color: Color(0xFFDE7728),
                  fontSize: 40.0,
                  fontFamily: 'Quicksand',
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter your username',
                  contentPadding: EdgeInsets.only(bottom: 8.0),
                  prefixIcon: Icon(Icons.person, color: Color(0xFF58636A)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  contentPadding: EdgeInsets.only(bottom: 8.0),
                  prefixIcon: Icon(Icons.email, color: Color(0xFF58636A)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  contentPadding: EdgeInsets.only(bottom: 8.0),
                  prefixIcon: Icon(Icons.key, color: Color(0xFF58636A)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Re-enter Password',
                  hintText: 'Re-enter your password',
                  contentPadding: EdgeInsets.only(bottom: 8.0),
                  prefixIcon: Icon(Icons.key, color: Color(0xFF58636A)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Login');
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFC93C13)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                minimumSize: MaterialStateProperty.all(const Size(360, 48)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              child: const Text('Sign up'),
            ),
            const SizedBox(height: 50.0),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Image.asset(
                'assets/images/Feather_Trails_Logo_Trans.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//<<<<<<< HEAD
//=======
class NewItinerary extends StatelessWidget {
  final PlacesSearchResult? selectedPlace;
  NewItinerary({this.selectedPlace});

  @override
  Widget build(BuildContext context) {
    String imageUrl = '';

    // Check if selectedPlace is not null and has photos
    if (selectedPlace != null && selectedPlace!.photos.isNotEmpty) {
      String photoReference = selectedPlace!.photos[0].photoReference;
      imageUrl = 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=300&photoreference=$photoReference&key=AIzaSyDXo20JjUHpFsttej--RYSHSyRhwrGCrRw';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('New Itinerary'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8.0),
            const Text(
              'Enter Itinerary Name:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Quicksand',
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black)),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Itinerary Name',
                  hintStyle: TextStyle(
                    color: Color(0xFF58636A),
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 115.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Enter Start and End of Trip:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Quicksand',
              ),
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black)),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Start',
                        hintStyle: TextStyle(
                          color: Color(0xFF58636A),
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 60.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                const Text(
                  '-',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black)),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'End',
                        hintStyle: TextStyle(
                          color: Color(0xFF58636A),
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                        ),
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.only(left: 60.0, bottom: 8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30.0),

            if (selectedPlace != null) // Conditionally load the Location widget if navigated from MapScreen
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
                        imageUrl,
                        width: 130,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          selectedPlace!.name,
                          style: const TextStyle(
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            const SizedBox(height: 30.0), // Add some space between the Row and the new Text widget

            const Text(
              'Recommended Stops:', // Your additional text here
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20.0),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Add your logic to handle the "Create New" button press
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFFC93C13)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 48)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: const Text('Create New'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//>>>>>>> 57fe4b19d675cb04125f6f0c8515e73ef8be4c72

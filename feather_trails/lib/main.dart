import 'package:flutter/material.dart';
import 'screens/map_screen.dart';

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
            background: const Color.fromARGB(255, 255, 255, 255),
          ),
          textTheme:
              const TextTheme(bodyLarge: TextStyle(fontFamily: 'Quicksand'))),

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
          child: MapScreen(),
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
                    Navigator.pushNamed(context, '/NewItinerary');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFC93C13)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    minimumSize: MaterialStateProperty.all(const Size(360, 48)),
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
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFC93C13)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    minimumSize: MaterialStateProperty.all(const Size(
                        double.infinity, 130)), // Adjust the size here
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
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
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Image.asset(
                'assets/images/Feather_Trails_Logo_Trans.png',
                width: 325,
                height: 325,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                'FeatherTrails',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Quicksand',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  contentPadding: EdgeInsets.only(bottom: 8.0),
                  prefixIcon: Icon(Icons.email, color: Color(0xFF58636A)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  contentPadding: EdgeInsets.only(bottom: 12.0),
                  prefixIcon: Icon(Icons.key, color: Color(0xFF58636A)),
                  enabledBorder: UnderlineInputBorder(
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
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: const Text('Sign in'),
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

class NewItinerary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            const SizedBox(
                height:
                    35.0), // Add some space between the Row and the new Text widget
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

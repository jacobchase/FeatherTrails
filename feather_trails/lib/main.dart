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
          background: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      initialRoute: '/Login',
      routes: {
        '/': (context) => MyHomePage(),
        '/placeItinerary': (context) => PlaceItineraryPage(),
        '/Login': (context) => Login(),
        '/ForgotPassword': (context) => ForgotPassword(),
        '/SignUp': (context) => SignUp(),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Login');
                },
                child: const Text('Logout'),
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
                  prefixIcon: Icon(Icons.email),
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
                  prefixIcon: Icon(Icons.key),
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
              padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  minimumSize: MaterialStateProperty.all(const Size(360, 48)),
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
                  padding: const EdgeInsets.only(left: 12.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/ForgotPassword');
                    },
                    child: const Text('Forgot Password?'),
                  ),
                ),
                const SizedBox(width: 8.0),
                Padding(
                  padding: const EdgeInsets.only(left: 150.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/SignUp');
                    },
                    child: const Text('Sign up'),
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
            const Text('You forgot your password!!'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Login');
              },
              child: const Text('Back to Login'),
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
            const Text('Sign up here!'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Login');
              },
              child: const Text('Back to Login'),
            ),
          ],
        ),
      ),
    );
  }
}

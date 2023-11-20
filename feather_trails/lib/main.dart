import 'package:flutter/material.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;
import 'package:feather_trails/place_itinerary_page.dart';
import 'package:feather_trails/intinerary_page.dart';
import 'package:feather_trails/profile_page.dart';
import 'package:feather_trails/social_page.dart';
import 'package:feather_trails/login_page.dart';
import 'package:feather_trails/forgot_password.dart';
import 'package:feather_trails/sign_up.dart';
import 'package:feather_trails/new_itinerary.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final PageStorageBucket bucket = PageStorageBucket();

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
            const TextTheme(bodyLarge: TextStyle(fontFamily: 'Quicksand')),
      ),
      initialRoute: '/Login',
      routes: {
        '/': (context) => MyHomePage(bucket: bucket),
        '/placeItinerary': (context) => PlaceItineraryPage(bucket: bucket),
        '/Login': (context) => LoginPage(bucket: bucket),
        '/ForgotPassword': (context) => ForgotPasswordPage(bucket: bucket),
        '/SignUp': (context) => SignUpPage(bucket: bucket),
        '/NewItinerary': (context) => NewItineraryPage(bucket: bucket),
        '/itineraryPage': (context) => ItineraryPage(bucket: bucket),
        '/profilePage': (context) => ProfilePage(bucket: bucket),
        '/socialPage': (context) => SocialPage(bucket: bucket),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final PageStorageBucket bucket;

  const MyHomePage({required this.bucket});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>
    with AutomaticKeepAliveClientMixin {
  int currentPageIndex = 0;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: PageStorage(
        key: const PageStorageKey('HomePage'),
        bucket: widget.bucket,
        child: IndexedStack(
          index: currentPageIndex,
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text('Page 1'),
            ),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
      bottomNavigationBar: my_nav_bar.NavigationBar(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
            if (index == 0) {
              Navigator.pushNamed(context, '/');
            }
            if (index == 1) {
              Navigator.pushNamed(context, '/itineraryPage');
            }
            if (index == 2) {
              Navigator.pushNamed(context, '/socialPage');
            }
            if (index == 3) {
              Navigator.pushNamed(context, '/profilePage');
            }
          });
        },
      ),
    );
  }
}

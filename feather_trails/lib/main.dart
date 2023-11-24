import 'package:flutter/material.dart';
import 'package:feather_trails/account_page.dart';
import 'package:feather_trails/notification_page.dart';
import 'package:feather_trails/privacy_policy.dart';
import 'package:feather_trails/settings_page.dart';
import 'package:feather_trails/shared_itineraries.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;
import 'package:feather_trails/place_itinerary_page.dart';
import 'package:feather_trails/add_to_itinerary_page.dart';
import 'package:feather_trails/intinerary_page.dart';
import 'package:feather_trails/itinerary_edit_page.dart';
import 'package:feather_trails/itinerary_date_details_page.dart';
import 'package:feather_trails/itinerary_date_edit_page.dart';
import 'package:feather_trails/profile_page.dart';
import 'package:feather_trails/social_page.dart';
import 'package:feather_trails/login_page.dart';
import 'package:feather_trails/forgot_password.dart';
import 'package:feather_trails/sign_up.dart';
import 'package:feather_trails/new_itinerary.dart';
import 'package:feather_trails/map_screen.dart';
import 'package:feather_trails/socials_s1.dart';
import 'package:feather_trails/socials_s2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feather Trails',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFC93C13),
          secondary: const Color(0xFFE8D9CC),
          background: const Color.fromARGB(255, 255, 255, 255),
        ),
        textTheme:
        const TextTheme(bodyLarge: TextStyle(fontFamily: 'Quicksand-Bold')),
      ),
      initialRoute: '/Login',
      routes: {
        '/': (context) => MapScreen(),
        '/placeItinerary': (context) => PlaceItineraryPage(),
        '/Login': (context) => LoginPage(),
        '/ForgotPassword': (context) => ForgotPasswordPage(),
        '/SignUp': (context) => SignUpPage(),
        '/NewItinerary': (context) => const NewItineraryPage(),
        '/itineraryPage': (context) => ItineraryPage(),
        '/addtoItineraryPage' : (context) => AddtoItineraryPage(),
        '/itineraryEditPage' : (context) => ItineraryEditPage(),
        '/itineraryDateEditPage' : (context) => ItineraryDateEditPage(),
        '/itineraryDateDetailsPage' : (context) => ItineraryDateDetailsPage(),
        '/profilePage': (context) => ProfilePage(),
        '/socialPage': (context) => SocialPage(),
        '/accountPage': (context) => AccountPage(),
        '/settingsPage': (context) => SettingsPage(),
        '/privacyPolicyPage': (context) => PrivacyPolicyPage(),
        '/notificationPage': (context) => NotificationsPage(),
        '/sharedItinerariesPage': (context) => SharedItinerariesPage(),
        '/socials1': (context) => Socials1(),
        '/socials2': (context) => Socials2()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPageIndex,
        children: [
          Container(),
          Container(),
          Container(),
          Container(),
        ],
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
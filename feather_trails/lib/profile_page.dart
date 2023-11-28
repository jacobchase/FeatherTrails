import 'package:flutter/material.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;

class ProfilePage extends StatefulWidget {
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(58.0),
              child: CircleAvatar(
                radius: 58,
                backgroundImage: NetworkImage(
                  'https://www.thingsguyana.com/wp-content/uploads/2020/01/1649px-Toco_Toucan_Ramphastos_toco_in_Papaya_Tree_Carica_papaya_28997424215-scaled.jpg',
                  scale: 210,
                ),
              ),
            ),
            const Text(
              '@user0000',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Quicksand'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/accountPage');
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFC93C13)),
                  minimumSize: MaterialStateProperty.all(
                    const Size(320, 48),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.0), // Adjust the value as needed
                    ),
                  ),
                ),
                child: const Text(
                  'Account',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Quicksand'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/settingsPage');
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFC93C13)),
                  minimumSize: MaterialStateProperty.all(
                    const Size(320, 48),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.0), // Adjust the value as needed
                    ),
                  ),
                ),
                child: const Text(
                  'Settings',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Quicksand'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/privacyPolicyPage');
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFC93C13)),
                    minimumSize: MaterialStateProperty.all(
                      const Size(320, 48),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8.0), // Adjust the value as needed
                      ),
                    ),
                  ),
                  child: const Text(
                    'Privacy',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Quicksand'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/notificationPage');
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFC93C13)),
                    minimumSize: MaterialStateProperty.all(
                      const Size(320, 48),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8.0), // Adjust the value as needed
                      ),
                    ),
                  ),
                  child: const Text(
                    'Notifications',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Quicksand'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sharedItinerariesPage');
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFC93C13)),
                    minimumSize: MaterialStateProperty.all(
                      const Size(320, 48),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8.0), // Adjust the value as needed
                      ),
                    ),
                  ),
                  child: const Text(
                    'Shared Itineraries',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Quicksand'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Login');
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFC93C13)),
                  minimumSize: MaterialStateProperty.all(
                    const Size(320, 48),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.0), // Adjust the value as needed
                    ),
                  ),
                ),
                child: const Text(
                  'Logout',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Quicksand'),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: my_nav_bar.NavigationBar(
        selectedIndex: 3,
        onDestinationSelected: (int index) {
          setState(() {
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

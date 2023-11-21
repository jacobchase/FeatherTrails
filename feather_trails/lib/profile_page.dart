import 'package:flutter/material.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;

class ProfilePage extends StatefulWidget {
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin<ProfilePage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    const Size(320, 48),
                  ),
                ),
                child: const Text('Account'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    const Size(320, 48),
                  ),
                ),
                child: const Text('Settings'),
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

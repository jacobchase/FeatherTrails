import 'package:flutter/material.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;

class ProfilePage extends StatefulWidget {
  final PageStorageBucket bucket;

  const ProfilePage({required this.bucket});
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return PageStorage(
      bucket: widget.bucket,
      key: const PageStorageKey('ProfilePage'),
      child: Scaffold(
        body: Container(
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
              // You can add additional profile-related content here
            ],
          ),
        ),
        bottomNavigationBar: my_nav_bar.NavigationBar(
          selectedIndex: 3, // Set the appropriate index for the ProfilePage
          onDestinationSelected: (int index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, '/');
                break;
              case 1:
                Navigator.pushNamed(context, '/itineraryPage');
                break;
              case 2:
                Navigator.pushNamed(context, '/socialPage');
                break;
              case 3:
                // Do something for index 3 if needed (already on ProfilePage)
                break;
            }
          },
        ),
      ),
    );
  }
}

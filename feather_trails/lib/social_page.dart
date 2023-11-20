import 'package:flutter/material.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;

class SocialPage extends StatefulWidget {
  final PageStorageBucket bucket;

  const SocialPage({required this.bucket});
  @override
  SocialPageState createState() => SocialPageState();
}

class SocialPageState extends State<SocialPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return PageStorage(
      bucket: widget.bucket,
      key: const PageStorageKey('SocialPage'),
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to the Social Page!'),
            ],
          ),
        ),
        bottomNavigationBar: my_nav_bar.NavigationBar(
          selectedIndex: 2, // Set the appropriate index for the SocialPage
          onDestinationSelected: (int index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, '/');
                break;
              case 1:
                Navigator.pushNamed(context, '/itineraryPage');
                break;
              case 2:
                // Do something for index 2 if needed (already on SocialPage)
                break;
              case 3:
                Navigator.pushNamed(context, '/profilePage');
                break;
            }
          },
        ),
      ),
    );
  }
}

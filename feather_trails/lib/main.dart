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
        ),
      ),
      home: MyHomePage(),
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
              selectedIcon: Icon(Icons.map_outlined, color: Color(0xFFFFFFFF), size: 36.0,),
              icon: Icon(Icons.map_outlined, color: Color(0xFFB2B7AE), size: 36.0,),
              label: 'Map',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.list, color: Color(0xFFFFFFFF), size: 36.0,),
              icon: Icon(Icons.list, color: Color(0xFFB2B7AE), size: 36.0,),
              label: 'Itinerary',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.language, color: Color(0xFFFFFFFF), size: 36.0,),
              icon: Icon(Icons.language, color: Color(0xFFB2B7AE), size: 36.0,),
              label: 'Social',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person_outlined, color: Color(0xFFFFFFFF), size: 36.0,),
              icon: Icon(Icons.person_outlined, color: Color(0xFFB2B7AE), size: 36.0,),
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
            child: const Text('Page 2'),
          ),
          Container(
            alignment: Alignment.center,
            child: const Text('Page 3'),
          ),
          Container(
            alignment: Alignment.center,
            child: const Text('Page 4'),
          ),
        ][currentPageIndex],
      );
    }
  }

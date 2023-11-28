import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onDestinationSelected;

  const NavigationBar({
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
            borderRadius: BorderRadius.only(
            topLeft: Radius.circular(6.0),
            topRight: Radius.circular(6.0),
           ),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onDestinationSelected,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(color: Colors.white, size: 36.0),
        unselectedIconTheme:
            const IconThemeData(color: Color(0xFFB2B7AE), size: 36.0),
        selectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedLabelStyle: const TextStyle(color: Color(0xFFB2B7AE)),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFC93C13), // Set background color here

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Itinerary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.language),
            label: 'Social',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
      ),
      ),
    );
  }
}

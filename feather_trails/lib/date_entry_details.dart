import 'package:flutter/material.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;

class DateEntryDetailsPage extends StatefulWidget {
  @override
  DateEntryDetailsPageState createState() => DateEntryDetailsPageState();

}

class DateEntryDetailsPageState extends State<DateEntryDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shangri La Botanical Gardens and Nature Center',
          style:  TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
          ),
          maxLines: 2,
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: ClipRRect(
          borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
        child: Image.network(
          'https://lh3.googleusercontent.com/p/AF1QipOrwIY5OVymZA3-COE9dQbzc_TzK-4Skl8VB2qc=s0',
          width: double.infinity,
          height: 300.0,
          fit: BoxFit.cover,
        ),
        ),
        ),
        SizedBox(height: 10.0),
       const Center(
         child: Padding(
         padding: EdgeInsets.only(left: 16.0, right: 16.0),
         child:Text(
         'About',
         style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w600,
        ),
        ),
        ),
        ),
          SizedBox(height: 8.0),
          buildInfoRow(Icons.location_on_outlined, '2111 W Park Ave, Orange, TX 77630'),
          SizedBox(height: 16.0),
          buildInfoRow(Icons.phone_outlined, '(409) 670-9113'),
          SizedBox(height: 16.0),
          buildInfoRow(Icons.access_time, 'Opens 9 AM'),
          SizedBox(height: 16.0),
          buildInfoRow(Icons.info_outline, 'Originally established in 1942, this 252-acre garden features hundreds of plants & birds.'),

        ],
      ),
    ),

      bottomNavigationBar: my_nav_bar.NavigationBar(
        selectedIndex: 1,
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
  Widget buildInfoRow(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.only(left:16.0, right: 16.0),
       child: Container(
      decoration: BoxDecoration(
        color: Color(0xFFE8D9CC),
        borderRadius: BorderRadius.circular(10.0),
      ),

        child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, color: const Color(0xFF58636A)),
            const SizedBox(width: 16.0),
            Expanded(
            child: Text(
            text,
            style: const TextStyle(
            color: Color(0xFF58636A),
            fontSize: 18.0,
            fontFamily: 'Quicksand',
             fontWeight: FontWeight.w500
             ),
            ),
          ),
         ],
        ),
        ),
        ),
    );
  }
}
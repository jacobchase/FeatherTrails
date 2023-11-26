import 'package:flutter/material.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;

class ItineraryDateDetailsPage extends StatefulWidget {
  @override
  ItineraryDateDetailsPageState createState() => ItineraryDateDetailsPageState();

}

class ItineraryDateDetailsPageState extends State<ItineraryDateDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details',
          style:  TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
          ),),
      ),
      body: SingleChildScrollView(
        //padding: const EdgeInsets.only(top: 16.0,  left: 16.0, right: 16.0),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: const TextField(
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                ),
                decoration: InputDecoration(
                  hintText: "October 20, 2023",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0,
                  ),
                  border: InputBorder.none,

                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/dateEntryDetailsPage');
              },
             child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xFFE8D9CC),
                ),
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                      child: Image.network(
                        'https://lh3.googleusercontent.com/p/AF1QipOrwIY5OVymZA3-COE9dQbzc_TzK-4Skl8VB2qc=s0',
                        width: 130,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Shangri La Botanical Gardens and Nature Center',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                              color: Color(0xFF58636A)
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xFFE8D9CC),
                ),
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                      child: Image.network(
                        'https://lh3.googleusercontent.com/p/AF1QipOvY0rmbqGq4ZEVx5DP07g4fgMQigNBP3mUKwhg=s0',
                        width: 130,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Dutch Windmill Museum',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                              color: Color(0xFF58636A)
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xFFE8D9CC),
                ),
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                      child: Image.network(
                        'https://lh3.googleusercontent.com/p/AF1QipPRojZJOEl5W4f1048rfHlc1CjB0PpT0aFApRsQ=s0',
                        width: 130,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Holiday Inn Express & Suites Port Arthur Central-Mall Area, an IHG Hotel',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                              color: Color(0xFF58636A)
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
}
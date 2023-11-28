import 'package:flutter/material.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;

class PlaceItineraryPage extends StatefulWidget {
  @override
  PlaceItineraryPageState createState() => PlaceItineraryPageState();
}

class PlaceItineraryPageState extends State<PlaceItineraryPage> {
  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The Smith's Family Vacation",
          style:  TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'Quicksand',
        ),),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/itineraryDateDetailsPage');
              },
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0, ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFE8D9CC),
                ),
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
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
                          'October 20, 2023'
                              '\n'
                              '3 places',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                              color: Color(0xFF58636A)
                          ),
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
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFE8D9CC),
                ),
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                      child: Image.network(
                        'https://lh3.googleusercontent.com/p/AF1QipMTH-ns_FsecWaedq2RlwxB5x0tlSxXkygIAKE8=s0',
                        width: 130,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'October 21, 2023'
                              '\n'
                              '3 places',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                              color: Color(0xFF58636A)
                          ),
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
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFE8D9CC),
                ),
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                      child: Image.network(
                        'https://lh3.googleusercontent.com/p/AF1QipO4_O57SaWhxZP8KtklEeKiV_IHqNQb7rwMBIWx=s0',
                        width: 130,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'October 22, 2023'
                              '\n'
                              '4 places',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                              color: Color(0xFF58636A)
                          ),
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
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFE8D9CC),
                ),
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                      child: Image.network(
                        'https://lh3.googleusercontent.com/p/AF1QipOU4Pvbwmqau0zl5oPT7Hl4ilyMMgK52yA4aoOq=s0',
                        width: 130,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'October 23, 2023'
                              '\n'
                              '4 places',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                              color: Color(0xFF58636A)
                          ),
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
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFE8D9CC),
                ),
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                      child: Image.network(
                        'https://www.wafflehouse.com/wp-content/themes/wahotheme/assets/heros/waho-mobile@2x.jpg',
                        width: 130,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'October 24, 2023'
                              '\n'
                              '3 places',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                              color: Color(0xFF58636A)
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFFC93C13)),
                  foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.white),
                  minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 48)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: const Text(
                  'Go!',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: my_nav_bar.NavigationBar(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              break;
            case 2:
              Navigator.pushNamed(context, '/socialPage');
              break;
            case 3:
              Navigator.pushNamed(context, '/profilePage');
          }
        },
      ),
    );
  }
}

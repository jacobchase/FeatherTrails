import 'package:flutter/material.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;

class SocialPage extends StatefulWidget {
  @override
  SocialPageState createState() => SocialPageState();
}

class SocialPageState extends State<SocialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Be Social!",
          style: TextStyle(
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.bold, // Set the font weight
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/socials1');
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFE8D9CC)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF58636A)),
                  minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 180)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: const Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                   //Image.network(
                   //'https://lh3.googleusercontent.com/p/AF1QipOU4Pvbwmqau0zl5oPT7Hl4ilyMMgK52yA4aoOq=s0',
                    //  width: 350,
                      //height: 360,
                     // fit: BoxFit.cover,
                      //alignment: Alignment.centerLeft,
                    //),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Johnson's Family Vacation",
                          style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                        ),

                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/socials2');
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFE8D9CC)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF58636A)),
                  minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 180)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: const Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Nashville Girls' Trip",
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                        ),
                        //textAlign: TextAlign.center,
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
        selectedIndex: 2,
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

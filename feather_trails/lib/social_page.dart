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
        title: const Text(
          "Be Social!",
          style: TextStyle(
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
    children:[
          InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/socials1');
          },
          child: Container(
            height: 250,
            decoration: BoxDecoration(
              color: Color(0xFFE8D9CC),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                  child: Image.network(
                    'https://www.wafflehouse.com/wp-content/themes/wahotheme/assets/heros/waho-mobile@2x.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 175,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all (20.0),
                  child: Row(
                      children: [
                        Icon(
                          Icons.drive_eta,
                          color: Color(0xFF58636A),
                        ),
                        Text(
                          "  Johnson's Family Vacation",
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0,
                            color: Color(0xFF58636A),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ]
                  ),
                ),
              ],
            ),
          ),
        ),
      SizedBox(height: 20.0),
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/socials2');
        },
        child: Container(
          height: 250,
          decoration: BoxDecoration(
            color: Color(0xFFE8D9CC),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                child: Image.network(
                  'https://nashvilleguru.com/officialwebsite/wp-content/uploads/2021/07/Downtown-SoBro-Nashville-2021-403-1024x683.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 175,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all (20.0),
                child: Row(
                  children: [
                    Icon(
                  Icons.drive_eta,
                  color: Color(0xFF58636A),
                ),
                    Text(
                  "  Nashville Girls' Trip",
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    color: Color(0xFF58636A),
                  ),
                  textAlign: TextAlign.left,
                ),
                ]
                ),
              ),
            ],
          ),
        ),
      ),
      ]
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

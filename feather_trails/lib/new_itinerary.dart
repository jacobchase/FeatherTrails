import 'package:flutter/material.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;

class NewItineraryPage extends StatefulWidget {
  final PageStorageBucket bucket;

  const NewItineraryPage({required this.bucket});
  @override
  NewItineraryPageState createState() => NewItineraryPageState();
}

class NewItineraryPageState extends State<NewItineraryPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return PageStorage(
      bucket: widget.bucket,
      key: const PageStorageKey('NewItinerary'),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('New Itinerary'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8.0),
              const Text(
                'Enter Itinerary Name:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Quicksand',
                ),
              ),
              const SizedBox(height: 8.0),
              Container(
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black)),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Itinerary Name',
                    hintStyle: TextStyle(
                      color: Color(0xFF58636A),
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 115.0),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Enter Start and End of Trip:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Quicksand',
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.black)),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Start',
                          hintStyle: TextStyle(
                            color: Color(0xFF58636A),
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 60.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  const Text(
                    '-',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.black)),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'End',
                          hintStyle: TextStyle(
                            color: Color(0xFF58636A),
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                          ),
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.only(left: 60.0, bottom: 8.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                  height:
                      35.0), // Add some space between the Row and the new Text widget
              const Text(
                'Recommended Stops:', // Your additional text here
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Add your logic to handle the "Create New" button press
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFC93C13)),
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
                  child: const Text('Create New'),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: my_nav_bar.NavigationBar(
          selectedIndex:
              1, // Set the appropriate index for the NewItineraryPage
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
                Navigator.pushNamed(context, '/profilePage');
                break;
            }
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:feather_trails/navBar.dart' as my_nav_bar;
import 'package:google_maps_webservice/places.dart';
import 'package:intl/intl.dart';

class NewItineraryPage extends StatefulWidget {
  final PlacesSearchResult? selectedPlace;

  const NewItineraryPage({this.selectedPlace});
  @override
  NewItineraryPageState createState() => NewItineraryPageState();
}

class NewItineraryPageState extends State<NewItineraryPage>{
  PlacesSearchResult? selectedPlace;
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  String startDateText = 'Start Date';
  late DateTime startDate;
  String endDateText = 'End Date';
  late DateTime endDate;

  @override
  void initState() {
    super.initState();
    selectedPlace = widget.selectedPlace; // Update this line
  }

  @override
  Widget build(BuildContext context) {
    String imageUrl = '';

    // Check if selectedPlace is not null and has photos
    if (selectedPlace != null && selectedPlace!.photos.isNotEmpty) {
      String photoReference = selectedPlace!.photos[0].photoReference;
      imageUrl =
      'https://maps.googleapis.com/maps/api/place/photo?maxwidth=300&photoreference=$photoReference&key=AIzaSyDXo20JjUHpFsttej--RYSHSyRhwrGCrRw';
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Itinerary',
          style:  TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
          ),),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                    )),
              ),
              child: const TextField(
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                ),
                decoration: InputDecoration(
                  hintText: "Name",
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
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black)),
                    ),
                    child: InkWell(
                      onTap: () async {
                        DateTime? selectedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2101),
                        );

                        if (selectedDate != null) {
                          setState(() {
                            startDate = selectedDate;
                            startDateText = DateFormat('MM/dd/yy').format(startDate);
                            startDateController.text = startDateText;
                          });
                        }
                      },

                      child: IgnorePointer(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: TextEditingController(text: startDateText),
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w600,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                const Text(
                  '-',
                  style: TextStyle(fontSize: 24.0),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black)),
                    ),
                    child: InkWell(
                      onTap: () async {
                        DateTime? selectedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2101),
                        );

                        if (selectedDate != null) {
                          setState(() {
                            endDate = selectedDate;
                            endDateText = DateFormat('MM/dd/yy').format(endDate);
                            endDateController.text = endDateText;
                          });
                        }
                      },
                      child: IgnorePointer(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: TextEditingController(text: endDateText),
                          style: const TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w600,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (selectedPlace !=
                null)

              InkWell(
                onTap: () {
                  //Navigator.pushNamed(context, '/itineraryDateEditPage');
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0, top: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFE8D9CC),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          child: Image.network(
                            imageUrl,
                            width: 130,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              '${selectedPlace!.name}\n${startDateText != "Start Date" ? startDateText : 'Not set'}',
                              style: const TextStyle(
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
              padding: const EdgeInsets.all(16.0),
              child:Container(
                alignment: Alignment.center,
                child: Icon(
                  Icons.add,
                ),
              ),

            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 4.0, top: 4.0,),
              child: Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Recommended:',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                //Navigator.pushNamed(context, '/itineraryDateEditPage');
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5.0),
                child: Container(

                  child: const Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text(
                              'Food/Dining',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.0,
                                  //color: Color(0xFF58636A)
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                              Icon(
                                Icons.arrow_forward,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                //Navigator.pushNamed(context, '/itineraryDateEditPage');
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5.0),
                child: Container(
                  child: const Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        //child: Image.network(
                          //'https://lh3.googleusercontent.com/p/AF1QipO4_O57SaWhxZP8KtklEeKiV_IHqNQb7rwMBIWx=s0',
                          //width: 130,
                         // height: 100,
                         // fit: BoxFit.cover,
                       // ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text(
                              'Activities',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.0,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                              Icon(
                                Icons.arrow_forward,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                //Navigator.pushNamed(context, '/itineraryDateEditPage');
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5.0),
                child: Container(
                  child: const Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text(
                            'Shopping',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                            ),
                            overflow: TextOverflow.ellipsis,
                            ),
                            Icon(
                              Icons.arrow_forward,
                            ),
                          ],
                         ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0, top: 50.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/itineraryPage');
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
                  'Create New',
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
class ItineraryEntry{
  String placeName;
  String location;
  DateTime date;

  ItineraryEntry({required this.placeName, required this.location, required this.date});

  void editEntry(String newPlaceName, String newLocation, DateTime newDate) {
    placeName = newPlaceName;
    location = newLocation;
    date = newDate;
  }

}

class Itinerary{
  String name;
  List<ItineraryEntry> entries;

  Itinerary({required this.name, required this.entries});

}


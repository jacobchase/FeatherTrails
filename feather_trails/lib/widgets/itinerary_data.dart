class ItineraryEntry{
  String placeName;
  String location;
  String date;

  ItineraryEntry({required this.placeName, required this.location, required this.date});

  void editEntry(String newPlaceName, String newLocation, String newDate) {
    placeName = newPlaceName;
    location = newLocation;
    date = newDate;
  }

}

class Itinerary{
  String name;
  List<ItineraryEntry> entries;
  String startDate;
  String endDate;

  Itinerary({required this.name, required this.entries, required this.startDate, required this.endDate});

}


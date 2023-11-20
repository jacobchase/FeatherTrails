import 'itin_cover.dart';
import 'itin_item.dart';
import 'itin_details.dart';

Future<List<ItinCover>> genItin () {
  return [
    ItinCover(
        itinTitle: "Trip 1",
        startPlace: "New York, New York",
        endPlace: "Santa Fe, New Mexico",
        startDate: DateTime(2023, 10, 20),
        endDate: DateTime(2023, 10, 20),
        places: [
          ItinItem(name: 'Place 1', address: 'Address 1', coordinates: '1.234,5.678'),
          ItinItem(name: 'Place 2', address: 'Address 2', coordinates: '4.234,5.678'),
        ]

    )


  ];



}


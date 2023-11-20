import 'itin_item.dart';

class ItinCover{
  String itinTitle;
  String startPlace;
  String endPlace;
  DateTime startDate;
  DateTime endDate;
  List<ItinItem> places;

  ItinCover({
  required this.itinTitle,
  required this.startPlace,
  required this.endPlace,
  required this.startDate,
  required this.endDate,
  this.places = const [],
  });

}
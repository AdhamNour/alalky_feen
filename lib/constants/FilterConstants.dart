import 'package:af/models/partFilter.dart';

class CONSTANTS {
  static String CARS = 'Cars';
  static String MOTORCYCLE = 'Motrocycles';
  static String BICYCLE = 'Bicycles';
  static Map<String, List<PartFilter>> FILTERS = {
    "Cars": [
      PartFilter(filterType: 'wheels'),
      PartFilter(filterType: 'another Wierd stuff'),
      PartFilter(filterType: 'some another Wierd stuff'),
      PartFilter(filterType: 'wheels'),
      PartFilter(filterType: 'another Wierd stuff'),
      PartFilter(filterType: 'some another Wierd stuff'),
    ],
    "Motrocycles": [
      PartFilter(filterType: 'wheels'),
      PartFilter(filterType: 'another Wierd stuff'),
      PartFilter(filterType: 'some another Wierd stuff'),
      PartFilter(filterType: 'wheels'),
      PartFilter(filterType: 'another Wierd stuff'),
    ],
    "Bicycles": [
      PartFilter(filterType: 'wheels'),
      PartFilter(filterType: 'another Wierd stuff'),
      PartFilter(filterType: 'some another Wierd stuff'),
      PartFilter(filterType: 'wheels'),
    ]
  };
}

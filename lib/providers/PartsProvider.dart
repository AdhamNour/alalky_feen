import 'package:af/models/partFilter.dart';
import 'package:flutter/cupertino.dart';

class Filters with ChangeNotifier {
  List<PartFilter> _currentFilters = [];
  bool firstTime = true;
  set currentFilters(newFiltters) {
    _currentFilters = [...newFiltters];
    firstTime = true;
    notifyListeners();
  }

  List<PartFilter> get currentFilters {
    return [..._currentFilters];
  }

  void toggleCertainFiltters({required int partIndex}) {
    _currentFilters[partIndex].wished = !_currentFilters[partIndex].wished;
    firstTime = false;
    notifyListeners();
  }

  List<String> getAllowedParts() {
    List<String> result = [];
    _currentFilters.forEach((e) {
      if (e.wished || firstTime) {
        result.add(e.filterType);
      }
    });
    return result;
  }
}

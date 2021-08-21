import 'package:af/models/partFilter.dart';
import 'package:flutter/cupertino.dart';

class Filters with ChangeNotifier {
  List<PartFilter> _currentFilters = [];
  set currentFilters(newFiltters) {
    _currentFilters = [...newFiltters];
    notifyListeners();
  }

  List<PartFilter> get currentFilters {
    return [..._currentFilters];
  }

  void toggleCertainFiltters({required int partIndex}) {
    _currentFilters[partIndex].wished = !_currentFilters[partIndex].wished;
    notifyListeners();
  }
}

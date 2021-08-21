import 'package:af/models/partFilter.dart';
import 'package:af/providers/PartsProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ANDrawer extends StatelessWidget {
  const ANDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final partsFilterProvider = Provider.of<Filters>(context);
    final partsFilter = partsFilterProvider.currentFilters;
    var partsFilterUI = [];
    for (var i = 0; i < partsFilter.length; i++) {
      partsFilterUI.add(CheckboxListTile(
        value: partsFilter[i].wished,
        onChanged: (_) {
          partsFilterProvider.toggleCertainFiltters(partIndex: i);
        },
        title: Text(partsFilter[i].filterType),
      ));
    }
    return Drawer(
        child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Drawer Header'),
        ),
        ...partsFilterUI
      ],
    ));
  }
}

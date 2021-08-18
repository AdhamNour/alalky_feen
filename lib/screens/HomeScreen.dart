import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("this is the dark home screen"),
            ),
          ),
          ElevatedButton(onPressed: () =>{}, child: Text('Next'))
        ],
      ),
    );
  }
}

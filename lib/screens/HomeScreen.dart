import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('./assets/images/splash.png'),
                    fit: BoxFit.cover)),
          ),
          Align(
            child: Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () => print('MotroCycle'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange[700]),
                        child: Text('Motrocycle')),
                  ),
                  flex: 1,
                  fit: FlexFit.tight,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => print('MotroCycle'),
                      child: Text('Cars'),
                      style:
                          ElevatedButton.styleFrom(primary: Colors.orange[700]),
                    ),
                  ),
                  flex: 1,
                  fit: FlexFit.tight,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange[700]),
                        onPressed: () => print('MotroCycle'),
                        child: Text('Bicycles')),
                  ),
                  flex: 1,
                  fit: FlexFit.tight,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
            alignment: Alignment(0, 0.5),
          )
        ],
      ),
    );
  }
}

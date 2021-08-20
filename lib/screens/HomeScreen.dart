import 'package:af/screens/ShopsScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  void navigate({required String pagename, required BuildContext ctx}) {
    Navigator.of(ctx)
        .pushNamed(ShopsScreen.routeName, arguments: {'type': pagename});
  }

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
                        onPressed: () =>
                            navigate(pagename: "Motorcycle", ctx: context),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange[700]),
                        child: Text('Motorcycle')),
                  ),
                  flex: 1,
                  fit: FlexFit.tight,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => navigate(pagename: "Cars", ctx: context),
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
                        onPressed: () =>
                            navigate(pagename: "Bicycles", ctx: context),
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

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextStyle whiteText = TextStyle(
    color: Colors.white,
  );

  bool shouldShowBanner = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material Banner"),
      ),
      body: Column(
        children: <Widget>[
          if (shouldShowBanner)
            MaterialBanner(
              padding: const EdgeInsets.all(20),
              contentTextStyle: whiteText,
              content: Text(
                "Your card has expired. Update your credit card information.",
              ),
              leading: Icon(
                Icons.credit_card,
                color: Colors.white,
              ),
              backgroundColor: Colors.indigo,
              actions: <Widget>[
                FlatButton(
                  child: Text("UPDATE", style: whiteText),
                  onPressed: _hideBanner,
                ),
                FlatButton(
                  child: Text("DISMISS", style: whiteText),
                  onPressed: _hideBanner,
                ),
              ],
            ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 190, left: 120),
                child: MaterialButton(
                  color: Colors.deepOrange,
                  onPressed: (){
                    setState(() {
                      shouldShowBanner = true;
                    });
                  },
                  child: Text("Show Banner", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _hideBanner() {
    setState(() => shouldShowBanner = false);
  }
}



import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AwesomeButton(),
    debugShowCheckedModeBanner: false,
  ));
}

class AwesomeButton extends StatefulWidget {
  @override
  _AwesomeButtonState createState() => _AwesomeButtonState();
}

class _AwesomeButtonState extends State<AwesomeButton> {
  int counter = 0;
  List<String> strings = ['Praxis', 'Academy', 'is', 'Awesome'];
  String displayedString = "";

  void onPressed() {
    setState(() {
      displayedString = strings[counter];
      counter = counter < 3 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Statefull Widget"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                displayedString,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
              ),
              RaisedButton(
                child: Text("Press me!",
                    style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 20.0)),
                color: Colors.blue,
                onPressed: onPressed,
              )
            ],
          ),
        ),
      ),
    );
  }
}

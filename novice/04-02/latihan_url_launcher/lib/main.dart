import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: _launchURL,
          child: Text("Show Flutter Homepage"),
        ),
      ),
    ),
  ));
}

_launchURL() async {
  const url = 'https://github.com/m-noer';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

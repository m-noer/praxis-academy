import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const MethodChannel methodChannel =
      MethodChannel('samples.flutter.io/device');

  String _deviceInformation = 'OS Version';

  Future<void> _getAndroidSystem() async {
    String deviceInformation;
    try {
      final String result =
          await methodChannel.invokeMethod('getAndroidSystem');
      deviceInformation = '$result';
    } on PlatformException {
      deviceInformation = "Failed";
    }
    setState(() {
      _deviceInformation = deviceInformation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_deviceInformation),
            RaisedButton(
              child: Text("Android System"),
              onPressed: _getAndroidSystem,
            )
          ],
        ),
      ),
    );
  }
}

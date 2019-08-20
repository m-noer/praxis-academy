import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_provider/weather_state.dart';
import 'dart:math';

void main() => runApp(MyApp());
TextEditingController cityController = new TextEditingController();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherPage(),
    );
  }
}

class WeatherPage extends StatefulWidget {
  WeatherPage({Key key}) : super(key: key);

  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => WeatherFake(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Fake Weather App"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Consumer<WeatherFake>(
                builder: (context, weatherFake, _) => Text(
                  weatherFake.city,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Consumer<WeatherFake>(
                builder: (context, weatherFake, _) => Text(
                  weatherFake.temperature.toStringAsFixed(1).toString(),
                  style: TextStyle(fontSize: 80),
                ),
              ),
              CityInputField(),
            ],
          ),
        ),
      ),
    );
  }
}

class CityInputField extends StatefulWidget {
  const CityInputField({
    Key key,
  }) : super(key: key);

  @override
  _CityInputFieldState createState() => _CityInputFieldState();
}

class _CityInputFieldState extends State<CityInputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Consumer<WeatherFake>(
        builder: (context, weatherFake, _) => TextField(
          controller: cityController,
          // onSubmitted: submitCityName,
          onSubmitted: (newValue) {
            weatherFake.city = newValue;
            weatherFake.temperature =
                20 + Random().nextInt(15) + Random().nextDouble();
          },
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            hintText: "Enter a city",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            suffixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}

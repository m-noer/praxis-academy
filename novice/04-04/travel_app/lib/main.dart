import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'list.dart';
import 'dart:developer' as developer;
import 'package:flutter/rendering.dart';

import 'app_localizations.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      supportedLocales: [
        Locale('en', 'US'),
        Locale('id', 'ID'),
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      AppLocalizations.of(context).translate('greeting'),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26.0,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      AppLocalizations.of(context).translate("question"),
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/girl.png"),
                  radius: 26,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 26.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  child: Text(
                    AppLocalizations.of(context).translate("popular"),
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {},
                ),
                GestureDetector(
                  child: Text(
                    AppLocalizations.of(context).translate("recommend"),
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    print("recommend");
                  },
                ),
                GestureDetector(
                  child: Text(
                    AppLocalizations.of(context).translate("newest"),
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    print("newest");
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[100]),
                borderRadius: new BorderRadius.all(Radius.circular(18)),
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage("assets/images/paris.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  AppLocalizations.of(context).translate("popularHotels"),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  AppLocalizations.of(context).translate("more"),
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Column(
              children: <Widget>[
                new ListHotel(
                  title: "Paris",
                  image: "assets/images/paris.jpg",
                ),
                SizedBox(
                  height: 15.0,
                ),
                new ListHotel(
                  title: "Tokyo",
                  image: "assets/images/tokyo.jpg",
                ),
                SizedBox(
                  height: 15.0,
                ),
                new ListHotel(
                  title: "TanaToraja",
                  image: "assets/images/tanatoraja.jpg",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

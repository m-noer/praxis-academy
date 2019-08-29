import 'package:flutter/material.dart';

import 'bottomAppBar.dart';

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
      home: FloatingTask("To Do List", Icon(Icons.add)),
    );
  }
}

class FloatingTask extends StatelessWidget {
  final String label;
  final Icon icon;

  FloatingTask(this.label, this.icon);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(label),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 3.0,
        icon: icon,
        label: Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Container(
          height: 55.0,
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

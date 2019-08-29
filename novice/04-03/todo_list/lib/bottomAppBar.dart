import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

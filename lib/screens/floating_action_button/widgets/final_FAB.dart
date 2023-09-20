import 'package:flutter/material.dart';

Widget buildFAB() {
  return AnimatedContainer(
    duration: Duration(milliseconds: 200),
    curve: Curves.linear,
    width: 50,
    height: 50,
    child: FloatingActionButton.extended(
      onPressed: () {
        // Handle the action for the small FAB here.
      },
      icon: Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Icon(Icons.edit),
      ),
      label: SizedBox(),
    ),
  );
}

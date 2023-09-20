import 'package:flutter/material.dart';

Widget buildExtendedFAB() {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 200),
    curve: Curves.linear,
    width: 150,
    height: 50,
    child: FloatingActionButton.extended(
      onPressed: () {
        // Handle the action for the extended FAB here.
      },
      icon: const Icon(Icons.edit),
      label: const Center(
        child: Text(
          "Compose",
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';

Widget buildFAB(bool isExpanded) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 200),
    curve: Curves.linear,
    width: isExpanded ? 150 : 50,
    height: 50,
    child: isExpanded
        ? FloatingActionButton.extended(
            onPressed: () {},
            icon: const Icon(Icons.edit),
            label: const Center(
              child: Text(
                "Compose",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          )
        : FloatingActionButton(
            child: const Icon(Icons.edit),
            onPressed: () {},
          ),
  );
}

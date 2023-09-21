import 'package:animations/screens/floating_action_button/list_page.dart';
import 'package:animations/screens/container_animation/animated_container_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigate to ListPage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListPage()),
                );
              },
              child: Text('Go to FAB example'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to ListPage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedContainerPage()),
                );
              },
              child: Text('Go to Animated Container example'),
            ),
            // You can add more buttons for other screens as needed
          ],
        ),
      ),
    );
  }
}

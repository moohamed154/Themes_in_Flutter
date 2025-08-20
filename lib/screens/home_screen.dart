import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Themes In Flutter'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Light Mode')),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text('Dark Mode')),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text('System Default')),
          ],
        ),
      ),
    );
  }
}

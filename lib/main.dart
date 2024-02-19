import 'package:flutter/material.dart';
import 'TaskBar.dart';
import 'MyHealth.dart'; // Import the MyHealthPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedTabIndex = 0;

  void _handleTabChanged(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Health App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: _selectedTabIndex == 2 ? MyHealthPage() : Placeholder(), // Placeholder for other pages
        bottomNavigationBar: TaskBar(
          onTabChanged: _handleTabChanged,
        ),
      ),
    );
  }
}

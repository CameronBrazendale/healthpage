import 'package:flutter/material.dart';

class MyHealthPage extends StatelessWidget {
  const MyHealthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Health'),
      ),
      body: Center(
        child: Text(
          'My health',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Nature Images'
            ),
          ),
          backgroundColor: Colors.indigo,
        ),
        body:
        Center(child: Image(
          image: AssetImage('Image/Scenery.jpeg'),)),
        backgroundColor: Colors.white70,
      ),
    ),
  );
}

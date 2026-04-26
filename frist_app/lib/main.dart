import "package:flutter/material.dart";
import "package:frist_app/gradient_container.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: const GradientContainer(Color.fromARGB(255, 241, 1, 93),Color.fromARGB(255, 109, 224, 33)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    ),
  );
}


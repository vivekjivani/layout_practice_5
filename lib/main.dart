import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: 500,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  top: 50,
                  left: 50,
                  child: Box(
                    text: "Red",
                    color: Colors.red.shade600,
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 100,
                  child: Box(
                    text: "Purple",
                    color: Colors.deepPurple.shade200,
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 150,
                  child: Box(
                    text: "Yellow",
                    color: Colors.yellow.shade700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  const Box({super.key, required this.text, required this.color});

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

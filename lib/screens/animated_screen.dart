import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 100;
  double _heigth = 100;
  Color _color = Colors.red;
  final BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(20);

  void changeShape() {
    final random = Random();

    _width = random.nextInt(300).toDouble() + 10;
    _heigth = random.nextInt(300).toDouble() + 10;
    _color = Color.fromRGBO(random.nextInt(255) + 70, random.nextInt(255) + 70,
        random.nextInt(255) + 70, 1);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Screen'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              child: Text('FJ'),
            ),
          )
        ],
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _heigth,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadiusGeometry,
          ),
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOutCubic,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          changeShape();
        },
      ),
    );
  }
}

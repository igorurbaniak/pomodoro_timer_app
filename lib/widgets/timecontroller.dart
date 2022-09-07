import 'package:flutter/material.dart';

class TimeController extends StatefulWidget {
  TimeController({Key? key}) : super(key: key);

  @override
  State<TimeController> createState() => _TimeControllerState();
}

class _TimeControllerState extends State<TimeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.black26,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: IconButton(
          icon: const Icon(Icons.pause),
          onPressed: () {},
          color: Colors.white,
          iconSize: 55,
        ),
      ),
    );
  }
}

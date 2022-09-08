import 'package:flutter/material.dart';
import 'package:pomodoro_timer_app/timerservice.dart';
import 'package:provider/provider.dart';

class TimeController extends StatefulWidget {
  const TimeController({Key? key}) : super(key: key);

  @override
  State<TimeController> createState() => _TimeControllerState();
}

class _TimeControllerState extends State<TimeController> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Container(
      width: 120,
      height: 120,
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: IconButton(
          icon: provider.timerPlaying
              ? const Icon(Icons.pause)
              : const Icon(Icons.play_arrow_sharp),
          onPressed: () {
            provider.timerPlaying
                ? Provider.of<TimerService>(context, listen: false).puase()
                : Provider.of<TimerService>(context, listen: false).start();
          },
          color: Colors.white,
          iconSize: 100,
        ),
      ),
    );
  }
}

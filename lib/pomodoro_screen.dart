import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomodoro_timer_app/timerservice.dart';
import 'package:pomodoro_timer_app/utils.dart';
import 'package:pomodoro_timer_app/widgets/progress.dart';
import 'package:pomodoro_timer_app/widgets/timecontroller.dart';
import 'package:pomodoro_timer_app/widgets/timeoptions.dart';
import 'package:pomodoro_timer_app/widgets/timercard.dart';
import 'package:provider/provider.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: renderColor(provider.currentState),
        title: Text(
          "POMOTIMER",
          style: GoogleFonts.carterOne(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<TimerService>(context, listen: false).reset();
            },
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            iconSize: 40,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: const [
              SizedBox(height: 25),
              TimerCard(),
              SizedBox(height: 45),
              TimeOptions(),
              SizedBox(height: 45),
              TimeController(),
              SizedBox(height: 45),
              ProgressWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

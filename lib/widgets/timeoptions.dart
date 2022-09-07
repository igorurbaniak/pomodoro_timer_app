import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomodoro_timer_app/utils.dart';

class TimeOptions extends StatelessWidget {
  TimeOptions({Key? key}) : super(key: key);

  double selectedTime = 1500;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(initialScrollOffset: 155),
      scrollDirection: Axis.horizontal,
      child: Row(
          children: selectableTimes.map((time) {
        return Container(
          margin: const EdgeInsets.only(left: 10),
          width: 70,
          height: 50,
          decoration: int.parse(time) == selectedTime
              ? BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                )
              : BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: Colors.white30,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
          child: Center(
            child: Text(
              (int.parse(time) ~/ 60).toString(),
              style: int.parse(time) == selectedTime
                  ? GoogleFonts.carterOne(
                      fontSize: 25,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w700,
                    )
                  : GoogleFonts.carterOne(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
            ),
          ),
        );
      }).toList()),
    );
  }
}

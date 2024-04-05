import 'package:druga_aplikacija/models/day_model.dart';
import 'package:flutter/material.dart';

class Day extends StatefulWidget {
  DayModel day;
  Day({super.key, required this.day});

  @override
  State<Day> createState() => _DayState();
}

class _DayState extends State<Day> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 70,
      width: 60,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color.fromARGB(255, 39, 68, 236),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 8),
        child: Column(
          children: [
            Text(
              widget.day.number.toString(),
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Text(
              textAlign: TextAlign.left,
              widget.day.textDay,
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ],
        ),
        /*child: Text.rich(
          TextSpan(text: widget.number.toString(), children: [
            TextSpan(
              text: widget.textDay,
            ),
          ]),
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          textAlign: TextAlign.center,
        ),*/
      ),
    );
  }
}

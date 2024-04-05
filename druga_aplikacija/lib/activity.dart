import 'package:druga_aplikacija/models/activity_model.dart';
import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  ActivityModel act;
  Activity({super.key, required this.act});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color.fromARGB(255, 192, 186, 186),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  size: 30,
                  act.icon,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.left,
                        act.name,
                        style: TextStyle(
                            fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      Text(
                        textAlign: TextAlign.left,
                        act.text,
                        style: TextStyle(
                            fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ],
        ),
      ),
    );
  }
}

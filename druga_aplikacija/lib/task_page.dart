import 'package:druga_aplikacija/activity.dart';
import 'package:druga_aplikacija/day.dart';
import 'package:druga_aplikacija/models/activity_model.dart';
import 'package:druga_aplikacija/models/day_model.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  List<ActivityModel> listAct = [
    ActivityModel(
        name: "Idea",
        text: "13 on this week",
        icon: Icons.flashlight_on_rounded),
    ActivityModel(
        name: "Food", text: "6 on this week", icon: Icons.fastfood_rounded),
    ActivityModel(
        name: "Work", text: "6 on this week", icon: Icons.feed_outlined),
    ActivityModel(
        name: "Sport", text: "6 on this week", icon: Icons.sports_gymnastics),
    ActivityModel(
        name: "Music",
        text: "6 on this week",
        icon: Icons.library_music_outlined),
    ActivityModel(
        name: "Shopping",
        text: "6 on this week",
        icon: Icons.shopping_bag_outlined),
  ];

  List<DayModel> listDay = [
    DayModel(number: 1, textDay: "Mon"),
    DayModel(number: 2, textDay: "Tue"),
    DayModel(number: 3, textDay: "Wed"),
    DayModel(number: 4, textDay: "Thu"),
    DayModel(number: 5, textDay: "Fri"),
    DayModel(number: 6, textDay: "Sat"),
    DayModel(number: 7, textDay: "Sun"),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 247, 248, 255),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.fullscreen_rounded,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    Text(
                      "Create Task",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.access_alarms_outlined,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ...listDay.map((model) => Day(day: model)).toList(),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        "Chose activity",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Wrap(
                        runSpacing: 20,
                        children: [
                          ...listAct
                              .map((model) => Activity(act: model))
                              .toList(),
                        ],
                      ),
                    ),
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

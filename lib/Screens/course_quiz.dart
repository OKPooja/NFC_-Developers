import 'package:flutter/material.dart';

class CourseQuiz extends StatefulWidget {
  const CourseQuiz({super.key});

  @override
  State<CourseQuiz> createState() => _CourseQuizState();
}

class _CourseQuizState extends State<CourseQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 50,
              color: Colors.red,
              child: Text('h'),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 50,
              color: Colors.blue,
              child: Text('t'),
            ),
          ),
        ],
      ),
    );
  }
}

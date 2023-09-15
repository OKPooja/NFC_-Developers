import 'package:flutter/material.dart';
import 'package:need/Screens/Cards/course_card.dart';

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
        children: const [
          CourseCard(imageUrl: 'https://media.istockphoto.com/id/508546190/photo/notebook-with-mutual-funds-sign-on-a-table-business-concept.jpg?s=612x612&w=0&k=20&c=oQt2vfmJn61DzNBnOccvRBatnbIOeigaNfrYIjUBk_I=', title: 'Mutual Funds'),

          CourseCard(imageUrl: "https://images.livemint.com/img/2023/01/04/600x338/Nifty_1667546435835_1672792988259_1672792988259.jpg", title: "Share Market"),

          CourseCard(imageUrl: 'https://cdn.pixabay.com/photo/2017/01/25/12/31/bitcoin-2007769_1280.jpg', title: 'Cryptocurrency'),
          
        ],
      ),
    );
  }
}

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:need/Screens/banking.dart';
import 'package:need/Screens/course_quiz.dart';
import 'package:need/Screens/profile.dart';
import 'home.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final items = const [
    Icon(Icons.home, size: 25, color: Colors.white,),
    Icon(Icons.format_list_bulleted_sharp, size: 25,color: Colors.white,),
    Icon(Icons.mobile_friendly_outlined, size: 25,color: Colors.white,),
    Icon(Icons.person_2_sharp, size: 25,color: Colors.white,)
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: getSelectedWidget(index: index)
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: [
    Icon(Icons.home, size: 25, color: index == 0 ? Color.fromRGBO(9, 22, 56, 1) : Colors.white,),
    Icon(Icons.format_list_bulleted_sharp, size: 25,color: index == 1 ? Color.fromRGBO(9, 22, 56, 1) : Colors.white,),
    Icon(Icons.mobile_friendly_outlined, size: 25,color: index == 2 ? Color.fromRGBO(9, 22, 56, 1) : Colors.white,),
    Icon(Icons.person_2_sharp, size: 25,color: index == 3 ? Color.fromRGBO(9, 22, 56, 1) : Colors.white,)
  ],
        index: index,
        onTap: (selctedIndex){
          setState(() {
            index = selctedIndex;
          });
        },
        height: 50,
        backgroundColor: Colors.white,
        buttonBackgroundColor : Color.fromRGBO(238, 238, 238, 1),
        color: Color.fromRGBO(9, 22, 56, 1),
        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
    );  
  }
  Widget getSelectedWidget({required int index}){
    Widget widget;
    switch(index){
      case 0:
        widget = const HomePage();
        break;
      case 1:
        widget = const CourseQuiz();
        break;
      case 2:
        widget = const BankingPage();
        break;
      case 3:
        widget = const ProfilePage();
        break;
      default:
        widget = const HomePage();
        break;
      
    }
    return widget;
  }
}

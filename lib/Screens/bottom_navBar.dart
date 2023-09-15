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
    Icon(Icons.home, size: 17,),
    Icon(Icons.format_list_bulleted_sharp, size: 17,),
    Icon(Icons.mobile_friendly_outlined, size: 17,),
    Icon(Icons.person_2_sharp, size: 17,)
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
        items: items,
        index: index,
        onTap: (selctedIndex){
          setState(() {
            index = selctedIndex;
          });
        },
        height: 50,
        backgroundColor: Color(0xFF0F044C),
        buttonBackgroundColor : Color.fromRGBO(238, 238, 238, 1),
        color: Color.fromRGBO(120, 122, 145, 1),
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

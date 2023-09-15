import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:need/Screens/search.dart';
import 'package:need/Screens/temp.dart';
import 'home.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final items = const [
    Icon(Icons.home, size: 30,),
    Icon(Icons.person, size: 30,),
    Icon(Icons.add, size: 30,),
    Icon(Icons.search_outlined, size: 30,)
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
        height: 70,
        backgroundColor: Colors.yellow.shade200,
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
        widget = const tempPage();
        break;
      case 2:
        widget = const tempPage();
        break;
      case 3:
        widget = const searchPage();
        break;
      default:
        widget = const HomePage();
        break;
      
    }
    return widget;
  }
}

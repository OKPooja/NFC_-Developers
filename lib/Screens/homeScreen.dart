import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen=false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)..rotateY(isDrawerOpen?-0.5:0),
      duration: Duration(milliseconds: 250),

      decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(isDrawerOpen?40:0.0)
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDrawerOpen?IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: (){
                    setState(() {
                      xOffset=0;
                      yOffset=0;
                      scaleFactor=1;
                      isDrawerOpen=false;
                    });
                  },
                ): IconButton(
                    onPressed: () {
                      setState(() {
                        xOffset = 230;
                        yOffset = 150;
                        scaleFactor = 0.6;
                        isDrawerOpen=true;
                      });
                    },
                    icon: Icon(Icons.menu)),
                Column(
                  children: [
                    Text('Financial literacy blah'),
                    Row(
                      children: [],
                    ),
                    CircleAvatar()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
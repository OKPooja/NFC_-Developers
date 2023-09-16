import 'package:flutter/material.dart';
import 'package:need/Screens/Course/Mutual%20funds/Mlevel2.dart';
import 'package:need/Screens/Course/Mutual%20funds/Mlevel3.dart';
import 'Mlevel1.dart';

class ShowLevelsMutualfunds extends StatefulWidget {
  const ShowLevelsMutualfunds({super.key});

  @override
  State<ShowLevelsMutualfunds> createState() => _ShowLevelsMutualfundsState();
}

class _ShowLevelsMutualfundsState extends State<ShowLevelsMutualfunds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Mlevel1(),
              Mlevel2(),
              Mlevel3(),
            ],
          ),
        ),
      ),
    );
  }
}

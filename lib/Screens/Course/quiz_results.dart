import 'package:flutter/material.dart';

class QuizResult extends StatefulWidget {
  final int result, total;
  const QuizResult({super.key, required this.result, required this.total});

  @override
  State<QuizResult> createState() => _QuizResultState();
}

class _QuizResultState extends State<QuizResult> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        color: Colors.white,
        elevation: 4.0,
        margin: EdgeInsets.all(16.0),
        child: Card(
          color: Colors.cyan,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Your score is", style: TextStyle(fontSize: 50)),
              SizedBox(height: 16),
              Text("${widget.result} / ${widget.total}", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(height: 16), // Add some spacing between the result and the message
              if (widget.result == 10)
                Text("Congratulations, you have successfully passed", style: TextStyle(fontSize: 30)),
              if (widget.result > 8 && widget.result < 10)
                Text("Amazing job",style: TextStyle(fontSize: 30)),
              if (widget.result > 5 && widget.result <= 8)
                Text("Good job",style: TextStyle(fontSize: 30)),
              if (widget.result <= 5)
                Text("Well tried!",style: TextStyle(fontSize: 30)),
            ],
          ),
        ),
      ),
    );
  }
}

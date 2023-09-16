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
    return Text("${widget.result}/${widget.total}");
  }
}

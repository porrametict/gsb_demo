import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class QuestionProgressBar extends StatelessWidget {
  const QuestionProgressBar(
      {Key? key, required this.currQuestion, required this.countQuestion})
      : super(key: key);

  final int currQuestion;
  final int countQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "คำถาม $currQuestion/$countQuestion",
            style: TextStyle(fontSize: 15, color: Colors.blueGrey[600]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: LinearPercentIndicator(
            percent: 0.3,
            backgroundColor: Colors.grey[200],
            progressColor: Theme.of(context).primaryColor,
            lineHeight: 8.0,
            barRadius: const Radius.circular(8.0),
          ),
        ),
      ],
    );
  }
}

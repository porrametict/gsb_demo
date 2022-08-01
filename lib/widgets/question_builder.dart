import 'package:flutter/material.dart';
import 'package:gsb_invest_coach/widgets/radio_list.dart';

import '../models/Question.dart';

class QuestionBuilder extends StatefulWidget {
  const QuestionBuilder({Key? key, required this.question}) : super(key: key);
  final Question question;

  @override
  _QuestionBuilderState createState() => _QuestionBuilderState();
}

class _QuestionBuilderState extends State<QuestionBuilder> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 30,
              top: 30,
            ),
            child: Text(
              widget.question.question,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          RadioList(
            choices: widget.question.choices,
          )
        ],
      ),
    );
  }
}

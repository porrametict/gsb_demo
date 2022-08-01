import 'package:flutter/cupertino.dart';
import 'package:gsb_invest_coach/models/Question.dart';

class QuestionProvider with ChangeNotifier {
  List<Question> questions = <Question>[];

  List<Question> get getQuestions {
    return questions;
  }

  set setQuestions(List<Question> qs) {
    questions = qs;
  }
}

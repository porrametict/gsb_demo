import 'dart:convert';

class Question {
  String question;
  List<String> choices;
  int? selectedChoice;

  /*
  {
    "question" : "Question 1",
    "choices" : [
    "choice 1",
    "choice 2",
    "choice 3",
    "choice 4",
    ],
    selectedChoise : null
  }
  */
  Question({
    required this.question,
    required this.choices,
    this.selectedChoice,
  });

  Map<String, dynamic> toMap() {
    return {
      "question": question,
      "choices": choices,
      "selectedChoice": selectedChoice,
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    Question obj = Question(
      question: map['question'],
      choices: map['choices'],
    );

    if (map.containsKey("selectedChoice")) {
      obj.selectedChoice = map['selectedChoice'];
    }
    return obj;
  }

  factory Question.fromJson(json) {
    final Map<String, dynamic> mapData = json.decode(json);
    return Question.fromMap(mapData);
  }

  static List<Question> listMapToListQuestion(list) {
    List<Question> listData = [];
    for (final item in list) {
      List<String> choices = [];
      for (final choice in item['incorrect_answers']) {
        choices.add(choice.toString());
      }
      item['choices'] = choices;
      final q = Question.fromMap(item);
      listData.add(q);
    }
    return listData;
  }
}

import 'package:quizzler/question.dart';

/// Keeps track of answers
/// And dispenses new questions
class QuizBrain {
  int _currentQuestion = 0;

  List<bool> scoreKeeper = [];
  final _quizBank = [
    Question(answer: false, question: "The chemical symbol for Oxygen is Ox"),
    Question(
        answer: true, question: "Canada is part of the British Commonwealth"),
    Question(answer: false, question: "War is Peace"),
    Question(answer: false, question: "Freedom is Slavery"),
    Question(answer: false, question: "Ignorance is Strength"),
    Question(
        answer: true,
        question:
            "The Immune System gets stronger when it encounters and overcomes viruses"),
    Question(
        answer: true, question: "The Earth is the third planet from the Sun"),
    Question(answer: false, question: "Flutter is a tool made by Facebook"),
    Question(answer: false, question: "Reddit is created by Mark Zuckerberg"),
    Question(answer: false, question: "Free Speech is relative"),
    Question(answer: false, question: "1+1 = 11"),
  ];

  void reset() {
    _currentQuestion = 0;
    scoreKeeper.clear();
  }

  String getQuestion() {
    return _quizBank[_currentQuestion].question;
  }

  bool getAnswer() {
    return _quizBank[_currentQuestion].answer;
  }

  void nextQuestion() {
    _currentQuestion++;
  }

  bool hasNextQuestion() {
    if (_currentQuestion < _quizBank.length - 1) {
      return true;
    }
    return false;
  }

  // Check Answer and Update scoreKeeper
  bool checkAnswer(bool answer) {
    scoreKeeper.add(getAnswer() == answer);
    if (hasNextQuestion()) {
      nextQuestion();
    }
  }
}

class Question {
  final String queationText;
  final List<Answer> answerList;

  Question(this.answerList, this.queationText);
}

class Answer {
  final bool isCorrect;
  final String answerText;

  Answer(this.isCorrect, this.answerText);
}

List<Question> getQuestion() {
  List<Question> questionList = [];

  questionList.add(Question([
    Answer(false, 'Rohit'),
    Answer(true, 'Dhoni'),
    Answer(false, 'Kohli'),
    Answer(false, 'Pandya')
  ], "What is Milan's favourite crickter?"));

  questionList.add(Question([
    Answer(false, 'Rohit'),
    Answer(true, 'Dhoni'),
    Answer(false, 'Kohli'),
    Answer(false, 'Pandya')
  ], "What is Milan's favourite cricket?"));

  questionList.add(Question([
    Answer(true, 'Cricket'),
    Answer(false, 'Volly Boll'),
    Answer(false, 'Kabaddi'),
    Answer(false, 'Swiming')
  ], "What is Milan's favourite sport?"));

  questionList.add(Question([
    Answer(false, 'Rohit'),
    Answer(true, 'Dhoni'),
    Answer(false, 'Kohli'),
    Answer(false, 'Pandya')
  ], "What is Milan's favourite cricket?"));

  questionList.add(Question([
    Answer(false, 'Rohit'),
    Answer(true, 'Dhoni'),
    Answer(false, 'Kohli'),
    Answer(false, 'Pandya')
  ], "What is Milan's favourite cricket?"));

  return questionList;
}

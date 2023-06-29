import 'package:flutter/material.dart';
import 'package:my_project/exercie2/exercise_model.dart';

class Exercise2 extends StatefulWidget {
  const Exercise2({super.key});

  @override
  State<Exercise2> createState() => _Exercise2State();
}

class _Exercise2State extends State<Exercise2> {
  List<Question> list = getQuestion();
  int currentIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  questionWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${currentIndex + 1}/${list.length.toString()} Questions',
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Dancing Script',
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Text(
              '${currentIndex + 1}',
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Dancing Script',
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              list[currentIndex].queationText,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Dancing Script',
              ),
            ),
          ],
        ),
      ],
    );
  }

  _optionList() {
    return Column(
      children: list[currentIndex]
          .answerList
          .map(
            (e) => optionButton(e),
          )
          .toList(),
    );
  }

  Widget optionButton(Answer answer) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 40,
      width: double.infinity,
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score += 5;
            } else {
              score = 5;
            }
          }
          setState(() {});
        },
        child: Text(
          answer.answerText,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: 'Dancing Script',
          ),
        ),
      ),
    );
  }

  Widget nextButton() {
    bool isLastQuestion = false;

    if (currentIndex == list.length - 1) {
      isLastQuestion = true;
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 40,
      width: double.infinity,
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        onPressed: () {
          if (isLastQuestion) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text(
                  'Your score is: $score',
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Dancing Script',
                  ),
                ),
              ),
            );
          } else {
            selectedAnswer = null;
            currentIndex++;
            setState(() {});
          }
        },
        child: Text(
          isLastQuestion ? 'Submit' : 'Next',
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: 'Dancing Script',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Simple Question & Answer",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontFamily: 'Dancing Script',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            questionWidget(),
            const SizedBox(
              height: 20,
            ),
            _optionList(),
            const SizedBox(
              height: 30,
            ),
            nextButton(),
          ],
        ),
      ),
    );
  }
}

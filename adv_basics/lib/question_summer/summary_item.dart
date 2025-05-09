import 'package:flutter/material.dart';
import 'package:adv_basics/question_summer/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  itemData['user_answer'] as String,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 60, 121, 170),
                  ),
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 138, 196, 244),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

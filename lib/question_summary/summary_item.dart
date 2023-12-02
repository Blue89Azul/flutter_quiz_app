import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.itemData});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final bool isCorrectAnswer =
        itemData['correct_answer'] == itemData['user_answer'];
    final int questionNumber = (itemData['question_index'] as int) + 1;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            questionNumber: questionNumber,
            isCorrectAnswer: isCorrectAnswer,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemData['user_answer'] as String,
                style: const TextStyle(color: Colors.redAccent),
              ),
              Text(
                itemData['correct_answer'] as String,
                style: const TextStyle(color: Colors.lightBlueAccent),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

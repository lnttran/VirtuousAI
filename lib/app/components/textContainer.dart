import 'package:flutter/material.dart';
import 'package:virtuous_ai/app/ai_query/ethicalAnswer.dart';
import 'package:virtuous_ai/app/ai_query/questionsEx.dart';

class TextContainer extends StatelessWidget {
  final EthicalQuestion ethicalQuestion;
  const TextContainer({super.key, required this.ethicalQuestion});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                EthicalAnswerWidget(ethicalQuestion: ethicalQuestion),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFF132A13), // Border color
                width: 2, // Border width
              ),
              borderRadius: BorderRadius.circular(20),
              color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                ethicalQuestion.icon,
                color: const Color(0xFF132A13),
                size: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  ethicalQuestion.question,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

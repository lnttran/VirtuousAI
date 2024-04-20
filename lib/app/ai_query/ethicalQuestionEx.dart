import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:virtuous_ai/app/ai_query/ethicalAnswer.dart';
import 'package:virtuous_ai/app/ai_query/questionsEx.dart';
import 'package:virtuous_ai/app/components/textContainer.dart';

class EthicalQuestionExWidget extends StatefulWidget {
  const EthicalQuestionExWidget({super.key});

  @override
  State<EthicalQuestionExWidget> createState() =>
      _EthicalQuestionExWidgetState();
}

class _EthicalQuestionExWidgetState extends State<EthicalQuestionExWidget> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 250, 232),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
                child: Text('Ethical Questions',
                    style: Theme.of(context).textTheme.displayLarge),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: EthicalQuestions.questions.length,
                    itemBuilder: (context, index) {
                      final question = EthicalQuestions.questions[index];
                      return TextContainer(
                        ethicalQuestion: question,
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

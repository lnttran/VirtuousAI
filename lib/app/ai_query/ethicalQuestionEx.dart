import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:virtuous_ai/app/ai_query/questionsEx.dart';

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
                        content: question.question,
                        icon: question.icon,
                        forArg: question.forArg,
                        agaisntArg: question.agaisntArg,
                        neutralArg: question.neutralArg,
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

class TextContainer extends StatelessWidget {
  final String content;
  final IconData icon;
  final String forArg;
  final String agaisntArg;
  final String neutralArg;
  const TextContainer(
      {super.key,
      required this.content,
      required this.icon,
      required this.agaisntArg,
      required this.forArg,
      required this.neutralArg});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
      child: Container(
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
              icon,
              color: const Color(0xFF132A13),
              size: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                content,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ResponseAnswer extends StatelessWidget {
  const ResponseAnswer({
    super.key,
    required this.responseText,
    required this.answerType,
  });

  final String responseText;
  final String answerType;

  @override
  Widget build(BuildContext context) {
    if (responseText.isEmpty && answerType.isEmpty) {
      return const SizedBox(); // Return an empty SizedBox if both are empty
    }

    Key _animatedTextKey = UniqueKey();
    BorderRadius borderRadius;
    if (answerType == "For") {
      borderRadius = const BorderRadius.only(
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
        topLeft: Radius.circular(0),
        topRight: Radius.circular(50),
      );
    } else if (answerType == "Against") {
      borderRadius = const BorderRadius.only(
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
        topLeft: Radius.circular(50),
        topRight: Radius.circular(0),
      );
    } else {
      borderRadius = BorderRadius.circular(50);
    }

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFF143601),
          borderRadius: borderRadius,
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: AnimatedTextKit(
            key: ValueKey<String>(responseText),
            animatedTexts: [
              TypewriterAnimatedText(
                cursor: '',
                responseText,
                textStyle: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Colors.white),
                speed: const Duration(milliseconds: 10),
              ),
            ],
            displayFullTextOnTap: true,
            isRepeatingAnimation: false,
          ),
        ),
      ),
    );
  }
}

// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';

// class TypingResponseAnswer extends StatefulWidget {
//   final String responseText;

//   TypingResponseAnswer({required this.responseText});

//   @override
//   _TypingResponseAnswerState createState() => _TypingResponseAnswerState();
// }

// class _TypingResponseAnswerState extends State<TypingResponseAnswer> {
//   // Generate a unique key for AnimatedTextKit
//   final GlobalKey _animatedTextKey = GlobalKey();

//    @override
//   void didUpdateWidget(TypingResponseAnswer oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (oldWidget.responseText != widget.responseText) {
//       // If responseText has changed, reset the typing effect
//       final currentState = _animatedTextKey.currentState as State?;
//       if (currentState != null && currentState.mounted) {
//         // Stop and start the animation if the state is not null and mounted
//         (currentState as AnimatedTextKitState).stop(); // Stop the animation
//         (currentState as AnimatedTextKitState).start(); // Start the animation again
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//       child: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//           color: const Color(0xFF143601),
//           borderRadius:
//               BorderRadius.circular(10), // Adjust borderRadius as needed
//           shape: BoxShape.rectangle,
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(30),
//           child: AnimatedTextKit(
//             key: _animatedTextKey, // Assign the unique key
//             animatedTexts: [
//               TypewriterAnimatedText(
//                 widget.responseText,
//                 textStyle: Theme.of(context).textTheme.headline6!.copyWith(
//                     color: Colors.white), // Adjust textStyle as needed
//                 speed:
//                     const Duration(milliseconds: 50), // Adjust speed as needed
//               ),
//             ],
//             displayFullTextOnTap: true,
//           ),
//         ),
//       ),
//     );
//   }

 
// }

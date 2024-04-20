import 'package:flutter/material.dart';
import 'package:virtuous_ai/app/ai_query/questionsEx.dart';
import 'package:virtuous_ai/app/components/textContainer.dart';

class EthicalAnswerWidget extends StatefulWidget {
  final EthicalQuestion ethicalQuestion;
  const EthicalAnswerWidget({super.key, required this.ethicalQuestion});

  @override
  State<EthicalAnswerWidget> createState() => _EthicalAnswerWidgetState();
}

class _EthicalAnswerWidgetState extends State<EthicalAnswerWidget> {
  @override
  void dispose() {
    super.dispose();
  }

  late int selectedIndex;
  late String answerText;

  @override
  void initState() {
    // TODO: implement initState
    selectedIndex = 1;
    answerText = widget.ethicalQuestion.forArg;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    BorderRadius borderRadius;
    if (selectedIndex == 1) {
      borderRadius = const BorderRadius.only(
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
        topLeft: Radius.circular(0),
        topRight: Radius.circular(50),
      );
    } else if (selectedIndex == 3) {
      borderRadius = const BorderRadius.only(
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
        topLeft: Radius.circular(50),
        topRight: Radius.circular(0),
      );
    } else {
      borderRadius = BorderRadius.circular(50);
    }
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 250, 232),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 248, 250, 232),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            // Navigate to the previous page
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextContainer(
                  ethicalQuestion: widget.ethicalQuestion,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          selectedIndex = 1;
                          answerText = widget.ethicalQuestion.forArg;
                        });
                      },
                      style: TextButton.styleFrom(
                        minimumSize: const Size(110, 40),
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        backgroundColor: selectedIndex == 1
                            ? const Color(0xFF132A13)
                            : const Color(0xFFF6FAD1),
                        // onPrimary: Color(0xFF132A13),
                        elevation: 3,
                        side: const BorderSide(
                          color: Color(0xFF132A13),
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text('For',
                          style: selectedIndex == 1
                              ? Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(color: Colors.white)
                              : Theme.of(context).textTheme.headlineLarge),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          selectedIndex = 2;
                          answerText = widget.ethicalQuestion.neutralArg;
                        });
                      },
                      style: TextButton.styleFrom(
                        minimumSize: const Size(110, 40),
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        backgroundColor: selectedIndex == 2
                            ? const Color(0xFF132A13)
                            : const Color(0xFFF6FAD1),
                        // onPrimary: Color(0xFF132A13),
                        elevation: 3,
                        side: const BorderSide(
                          color: Color(0xFF132A13),
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text('Neutral',
                          style: selectedIndex == 2
                              ? Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(color: Colors.white)
                              : Theme.of(context).textTheme.headlineLarge),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          selectedIndex = 3;
                          answerText = widget.ethicalQuestion.agaisntArg;
                        });
                      },
                      style: TextButton.styleFrom(
                        minimumSize: const Size(110, 40),
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        backgroundColor: selectedIndex == 3
                            ? const Color(0xFF132A13)
                            : const Color(0xFFF6FAD1),
                        // onPrimary: Color(0xFF132A13),
                        elevation: 3,
                        side: const BorderSide(
                          color: Color(0xFF132A13),
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text('Against',
                          style: selectedIndex == 3
                              ? Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(color: Colors.white)
                              : Theme.of(context).textTheme.headlineLarge),
                    ),
                  ],
                ),
                Padding(
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
                      child: Text(
                        answerText,
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

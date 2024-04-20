import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:virtuous_ai/app/components/responseAnswer.dart';

class AIQueryWidget extends StatefulWidget {
  const AIQueryWidget({super.key});

  @override
  State<AIQueryWidget> createState() => _AIQueryWidgetState();
}

class _AIQueryWidgetState extends State<AIQueryWidget> {
  late final queryController = TextEditingController();
  int selectedIndex = 0;
  String responseText = '';
  String answerType = '';

  @override
  void dispose() {
    queryController.dispose();
    super.dispose();
  }

  completeFun(String thisAnswerType) async {
    if (queryController.text.isEmpty) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: const Color(0xFFF6FAD1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    15.0), // Adjust the border radius here
              ),
              content: Container(
                width: double.infinity,
                height: 30,
                child: Center(
                  child: Text(
                    'Please enter a query',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
              ),
            );
          });
    } else {
      setState(() {
        answerType = thisAnswerType;
        responseText = 'Loading ....';
        // Update answerType with the new value
      });

      String apiUrl =
          'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=${dotenv.env['API_KEY']}';

      final Map<String, dynamic> requestBody = {
        "contents": [
          {
            "parts": [
              {
                "text":
                    "As an ethical professional machine. You will be provided with an input and a choice to argue for (for/neutral/against). Your answer must be paragraphs of argument to support your answer, it must follow the user choise of argument of either for, neutral (provide both sides argument), or against. Your answer should be in the range of 70 - 100 words (NO NEED to include headers). \nINPUT: (Argument tone: $answerType) \n Topic: ${queryController.text}"
              }
            ]
          }
        ],
        "safetySettings": [
          {
            "category": "HARM_CATEGORY_SEXUALLY_EXPLICIT",
            "threshold": "BLOCK_NONE"
          },
          {"category": "HARM_CATEGORY_HATE_SPEECH", "threshold": "BLOCK_NONE"},
          {"category": "HARM_CATEGORY_HARASSMENT", "threshold": "BLOCK_NONE"},
          {
            "category": "HARM_CATEGORY_DANGEROUS_CONTENT",
            "threshold": "BLOCK_NONE"
          }
        ]
      };

      print(
          'INPUT: Provide argument for $answerType\n Topic:${queryController.text}');

      try {
        final response = await http.post(
          Uri.parse(apiUrl),
          headers: <String, String>{
            'Content-Type': 'application/json',
          },
          body: jsonEncode(requestBody),
        );

        if (response.statusCode == 200) {
          print('Post request succeed.');
          final Map<String, dynamic> responseData = jsonDecode(response.body);
          // final text =
          //     responseData['candidates'][0]['content']['parts'][0]['text'];
          setState(() {
            responseText =
                responseData['candidates'][0]['content']['parts'][0]['text'];
            // debugPrint(responseText);
          });
        } else {
          // Request failed
          print("Failed with status code: ${response.statusCode}");
          print("Error: ${response.body}");
        }
      } catch (e) {
        // Handle exceptions
        print("Exception: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Dismiss keyboard when tapped
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(18, 14, 18, 14),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/Robot.png',
                        width: 350,
                        height: 380,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Text(
                        'Your intelligent Ethical Companion',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10, 15, 10, 0),
                      child: Text(
                        'Please enter your ethical question in the textfield below, then select Neutral, For, or Against option for the relevant answer.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: queryController,
                            // focusNode: _model.textFieldFocusNode,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: false,
                              alignLabelWithHint: false,
                              hintText: 'Enter your ethical query here ...',
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(color: const Color(0xFF57636C)),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFF6FAD1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF132A13),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFF6FAD1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFF6FAD1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              filled: true,
                              fillColor: const Color(0xFFF6FAD1),
                              contentPadding: const EdgeInsets.all(20),
                            ),
                            style: Theme.of(context).textTheme.headlineLarge,
                            textAlign: TextAlign.start,
                            minLines: null,
                            // validator:
                            //     _model.textControllerValidator.asValidator(context),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  completeFun('For');
                                  setState(() {
                                    selectedIndex = 1;
                                  });
                                },
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(110, 40),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
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
                                        : Theme.of(context)
                                            .textTheme
                                            .headlineLarge),
                              ),
                              TextButton(
                                onPressed: () {
                                  completeFun('Neutral');
                                  setState(() {
                                    selectedIndex = 2;
                                  });
                                },
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(110, 40),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
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
                                        : Theme.of(context)
                                            .textTheme
                                            .headlineLarge),
                              ),
                              TextButton(
                                onPressed: () {
                                  completeFun('Against');
                                  setState(() {
                                    selectedIndex = 3;
                                  });
                                },
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(110, 40),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
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
                                        : Theme.of(context)
                                            .textTheme
                                            .headlineLarge),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ResponseAnswer(
                      responseText: responseText,
                      answerType: answerType,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

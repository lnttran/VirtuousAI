import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AboutUsPageWidget extends StatefulWidget {
  const AboutUsPageWidget({super.key});

  @override
  State<AboutUsPageWidget> createState() => _AboutUsPageWidgetState();
}

class _AboutUsPageWidgetState extends State<AboutUsPageWidget> {
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
        child: SingleChildScrollView(
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 50, 70, 0),
                    child: Text(
                      'Welcome to Virtuous AI, your ultimate ethical companion powered by artificial intelligence',
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                          color: const Color(0xFF132A13)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
                    child: Text(
                      'With Virtuous AI, you can explore ethical dilemmas, seek guidance on moral decisions, and engage in meaningful conversations about ethics.',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Color(0xFF132A13)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 30, 0, 0),
                            child: Text('How to Use Our App\n',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge
                                    ?.copyWith(
                                        color: Color.fromARGB(
                                            255, 233, 245, 227))),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color:
                                    const Color.fromARGB(255, 248, 250, 232)),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Icon(
                                  Icons.settings_sharp,
                                  color: Colors.black,
                                  size: 24,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    'Navigate to the Ethical Question Companion',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color:
                                    const Color.fromARGB(255, 248, 250, 232)),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Icon(
                                  Icons.content_paste,
                                  color: Colors.black,
                                  size: 24,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Text(
                                      'Write your ethical dilemma/question',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color:
                                    const Color.fromARGB(255, 248, 250, 232)),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Icon(
                                  Icons.ads_click,
                                  color: Colors.black,
                                  size: 24,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Text(
                                      'Select a button for "For", "Against" or "Neutral" responses',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color:
                                    const Color.fromARGB(255, 248, 250, 232)),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Icon(
                                  Icons.chat_bubble,
                                  color: Colors.black,
                                  size: 24,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Text(
                                      'Watch VirtuousAI give you an answer!',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                    child: Text(
                      'Meet our team ',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
                    child: Text(
                      'Out team comprises diverse individuals with distinct skills and strengths, including creative thinkers and analytical problem solvers.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/Caleb-image.png',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text('Caleb Gould',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              fontSize: 22, fontWeight: FontWeight.w700)),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    child: Text(
                      'Junior: B.A. in Journalism, with a minor in\nComputer Science\n',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/Ridhi-image.jpg',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text('Ridhi Ralli',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              fontSize: 22, fontWeight: FontWeight.w700)),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                    child: Text(
                      'Junior: B.B.A. Finance with a Specialization in Entrepreneurship and a B.A. in Computer Science',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/Tran-image.jpg',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text('Tran Lam',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              fontSize: 22, fontWeight: FontWeight.w700)),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                    child: Text(
                      'Junior: B.S. in Computer Science',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

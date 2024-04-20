import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:virtuous_ai/app/authentication/forgotPassPage.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:virtuous_ai/app/authentication/signup.dart';
import 'package:virtuous_ai/app/components/APIs.dart';

class LoginWidget extends StatefulWidget {
  final Function()? onTap;
  const LoginWidget({super.key, required this.onTap});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool obscure = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void showErrorMessage(String errorMessage) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: const Color(0xFFF6FAD1),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(15.0), // Adjust the border radius here
            ),
            content: Container(
              width: double.infinity,
              height: 30,
              child: Center(
                child: Text(
                  errorMessage,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
            ),
          );
        });
  }

  Future<void> signInWithEmailAndPassword() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
              child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF132A13)),
          ));
        });
    try {
      await APIs().signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      showErrorMessage(e.code);
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
        key: scaffoldKey,
        backgroundColor: const Color.fromARGB(255, 248, 250, 232),
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 248, 250, 232),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          constraints: const BoxConstraints(
                            maxWidth: 500,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(24, 200, 24, 24),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Welcome to VirtuousAI!',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 12, 0, 24),
                                    child: Text('We have missed you.',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 16),
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: emailController,
                                      autofocus: true,
                                      autofillHints: const [
                                        AutofillHints.email
                                      ],
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Email',
                                        labelStyle: Theme.of(context)
                                            .textTheme
                                            .headlineLarge,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color.fromRGBO(
                                                164, 178, 132, 1),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFF132A13),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFF132A13),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFF132A13),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        filled: true,
                                        fillColor: const Color(0xFFF6FAD1),
                                      ),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge,
                                      minLines: null,
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 16),
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: passwordController,
                                      autofocus: true,
                                      obscureText: obscure,
                                      autofillHints: const [
                                        AutofillHints.password
                                      ],
                                      decoration: InputDecoration(
                                        labelText: 'Password',
                                        labelStyle: Theme.of(context)
                                            .textTheme
                                            .headlineLarge,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color.fromRGBO(
                                                164, 178, 132, 1),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFF132A13),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFF132A13),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFF132A13),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        filled: true,
                                        fillColor: const Color(0xFFF6FAD1),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(() {
                                            obscure =
                                                !obscure; // Toggle obscure state
                                          }),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            obscure
                                                ? Icons.visibility_off_outlined
                                                : Icons.visibility_outlined,
                                            color: const Color(0xFF57636C),
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge,
                                      minLines: null,
                                      // validator: _model
                                      //     .passwordControllerValidator
                                      //     .asValidator(context),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                          text: 'Forgot password?',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium,
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              // Navigate to the desired page
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const ForgotpassWidget()),
                                              );
                                            }),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 16),
                                  child: SizedBox(
                                    width: 100,
                                    height: 45,
                                    child: TextButton(
                                      onPressed: signInWithEmailAndPassword,
                                      style: TextButton.styleFrom(
                                        backgroundColor: const Color(
                                            0xFF132A13), // Change the button color as needed
                                      ),
                                      child: Text(
                                        'Log In',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge
                                            ?.copyWith(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 24),
                                  child: Container(
                                    width: 370,
                                    child: Stack(
                                      alignment: AlignmentDirectional(0, 0),
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0, 0),
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0, 12, 0, 12),
                                            child: Container(
                                              width: double.infinity,
                                              height: 2,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    164, 178, 132, 1),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                // You will have to add an action on this rich text to go to your login page.
                                Align(
                                  alignment: const AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 12, 0, 12),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          const TextSpan(
                                            text: 'Don\'t have an account? ',
                                          ),
                                          TextSpan(
                                              text: 'Sign Up ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium
                                                  ?.copyWith(
                                                      color: const Color(
                                                          0xFF132A13),
                                                      fontWeight:
                                                          FontWeight.w600),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = widget.onTap),
                                          const TextSpan(
                                            text: 'here',
                                          )
                                        ],
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

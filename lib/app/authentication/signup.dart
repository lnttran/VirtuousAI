import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:virtuous_ai/app/authentication/login.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:virtuous_ai/app/components/APIs.dart';

class SignUpWidget extends StatefulWidget {
  final Function()? onTap;
  const SignUpWidget({super.key, required this.onTap});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool obscure = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();

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

  Future<void> createUserWithEmailAndPassword() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
              child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF132A13)),
          ));
        });
    try {
      if (passwordController.text == confirmPasswordController.text) {
        await APIs().createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
          firstName: firstNameController.text,
          lastName: lastNameController.text,
        );
        if (mounted) {
          Navigator.pop(context);
        }
      } else {
        if (mounted) {
          Navigator.pop(context);
          showErrorMessage("Passwords do not match.");
        }
      }
    } on FirebaseAuthException catch (e) {
      // Check if the widget is still mounted before showing the error message
      if (mounted) {
        Navigator.pop(context);
        showErrorMessage(e.code);
      }
    }
  }

  // @override
  // void dispose() {
  //   // Dispose of the controllers when the state is disposed
  //   emailController.dispose();
  //   passwordController.dispose();
  //   confirmPasswordController.dispose();
  //   firstNameController.dispose();
  //   lastNameController.dispose();
  //   super.dispose();
  // }

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
                // flex: 6,
                child: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 248, 250, 232),
                  ),
                  // alignment: AlignmentDirectional(0, -1),
                  child: SingleChildScrollView(
                    child: Column(
                      // mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          constraints: const BoxConstraints(
                            maxWidth: 430,
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(24, 160, 24, 24),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Sign In',
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
                                      child: Text(
                                          'Let\'s get started by filling out the information below.',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0, 0, 8, 16),
                                          child: TextFormField(
                                            controller: firstNameController,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'First name',
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
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFF132A13),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  const Color(0xFFF6FAD1),
                                            ),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineLarge,
                                            minLines: null,
                                            keyboardType: TextInputType.name,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 0, 16),
                                          child: TextFormField(
                                            controller: lastNameController,
                                            autofocus: true,
                                            decoration: InputDecoration(
                                              labelText: 'Last name',
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
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFF132A13),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  const Color(0xFFF6FAD1),
                                            ),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineLarge,
                                            minLines: null,
                                            keyboardType: TextInputType.name,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 16),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller: emailController,
                                        autofocus: true,
                                        autofillHints: [AutofillHints.email],
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
                                          focusedErrorBorder:
                                              OutlineInputBorder(
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
                                        keyboardType:
                                            TextInputType.emailAddress,
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 16),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        obscureText: obscure,
                                        controller: passwordController,
                                        autofocus: true,
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
                                          focusedErrorBorder:
                                              OutlineInputBorder(
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
                                                  ? Icons
                                                      .visibility_off_outlined
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
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 16),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller: confirmPasswordController,
                                        autofocus: true,
                                        obscureText: obscure,
                                        autofillHints: const [
                                          AutofillHints.password
                                        ],
                                        decoration: InputDecoration(
                                          labelText: 'Confirm password',
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
                                          focusedErrorBorder:
                                              OutlineInputBorder(
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
                                                  ? Icons
                                                      .visibility_off_outlined
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
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 16),
                                    child: SizedBox(
                                      width: 100,
                                      height: 45,
                                      child: TextButton(
                                        onPressed:
                                            createUserWithEmailAndPassword,
                                        style: TextButton.styleFrom(
                                          backgroundColor: const Color(
                                              0xFF132A13), // Change the button color as needed
                                        ),
                                        child: Text(
                                          'Sign Up',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineLarge
                                              ?.copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 24),
                                    child: Container(
                                      width: 370,
                                      child: Stack(
                                        alignment: AlignmentDirectional(0, 0),
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
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
                                              text: 'Already had an account? ',
                                            ),
                                            TextSpan(
                                              text: 'Log in ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium
                                                  ?.copyWith(
                                                      color: const Color(
                                                          0xFF132A13),
                                                      fontWeight:
                                                          FontWeight.w600),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = widget.onTap,
                                            ),
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

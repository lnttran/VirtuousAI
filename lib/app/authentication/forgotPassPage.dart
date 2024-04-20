import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotpassWidget extends StatefulWidget {
  const ForgotpassWidget({super.key});

  @override
  State<ForgotpassWidget> createState() => _ForgotpassWidgetState();
}

class _ForgotpassWidgetState extends State<ForgotpassWidget> {
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

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
              height: 40,
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

  Future resetPassword() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      showErrorMessage('Request email has sent! Please check your email.');
      emailController.clear();
    } on FirebaseAuthException catch (e) {
      print(e);
      showErrorMessage(e.message.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 250, 232),
      appBar: AppBar(
        backgroundColor: const Color(0xFF132A13),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            // Navigate to the previous page
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: Align(
        // alignment: AlignmentDirectional(0, -1),
        child: Container(
          width: double.infinity,
          constraints: const BoxConstraints(
            maxWidth: 570,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 20),
                child: Text(
                  'Forgot Password',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 4, 16, 4),
                child: Text(
                  'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 20, 16, 16),
                child: Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: emailController,
                    autofocus: true,
                    autofillHints: const [AutofillHints.email],
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: Theme.of(context).textTheme.headlineLarge,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFF1F4F8),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF132A13),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF132A13),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF132A13),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: const Color(0xFFF6FAD1),
                    ),
                    style: Theme.of(context).textTheme.headlineLarge,
                    minLines: null,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                child: SizedBox(
                  width: 150,
                  height: 45,
                  child: TextButton(
                    onPressed: () async {
                      if (emailController.text.isEmpty) {
                        showErrorMessage('Email required');
                        return;
                      }
                      resetPassword();
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(
                          0xFF132A13), // Change the button color as needed
                    ),
                    child: Text(
                      'Send Request',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
              // Align(
              //   alignment: AlignmentDirectional(0, 0),
              //   child: Padding(
              //     padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              //     child: FFButtonWidget(
              //       onPressed: () async {
              //         if (_model.emailAddressTextController.text.isEmpty) {
              //           ScaffoldMessenger.of(context).showSnackBar(
              //             SnackBar(
              //               content: Text(
              //                 'Email required!',
              //               ),
              //             ),
              //           );
              //           return;
              //         }
              //         await authManager.resetPassword(
              //           email: _model.emailAddressTextController.text,
              //           context: context,
              //         );
              //       },
              //       text: 'Send Link',
              //       options: FFButtonOptions(
              //         width: 270,
              //         height: 50,
              //         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
              //         iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
              //         color: Color(0xFF18651A),
              //         textStyle:
              //             FlutterFlowTheme.of(context).titleSmall.override(
              //                   fontFamily: 'Tinos',
              //                   letterSpacing: 0,
              //                 ),
              //         elevation: 3,
              //         borderSide: BorderSide(
              //           color: Colors.transparent,
              //           width: 1,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:virtuous_ai/app/authentication/signup.dart';

import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF132A13),
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
                    color: Colors.white,
                  ),
                  // alignment: AlignmentDirectional(0, -1),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 140,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          constraints: const BoxConstraints(
                            maxWidth: 430,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: const EdgeInsets.all(24),
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
                                      child: Text(
                                          'Let\'s get started by filling out the information below.',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 16),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
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
                                              color: Color(0xFFF1F4F8),
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
                                              color: Color(0xFFF1F4F8),
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
                                            onTap: () => (),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: const Icon(
                                              // _model.passwordVisibility
                                              //     ? Icons.visibility_outlined
                                              //     :
                                              Icons.visibility_off_outlined,
                                              color: Color(0xFF57636C),
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
                                              // Navigate to the sign-up page here
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    const SignUpWidget(),
                                              ));
                                            },
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 16),
                                    child: TextButton(
                                      onPressed: () async {
                                        // GoRouter.of(context).prepareAuthEvent();

                                        // final user =
                                        //     await authManager.signInWithEmail(
                                        //   context,
                                        //   _model.emailAddressController.text,
                                        //   _model.passwordController.text,
                                        // );
                                        // if (user == null) {
                                        //   return;
                                        // }

                                        // context.goNamedAuth(
                                        //     'null', context.mounted);
                                      },
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty
                                            .resolveWith<Color>((states) => Colors
                                                .green), // Change the background color as needed
                                        padding: MaterialStateProperty.all(
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 0),
                                        ),
                                        elevation: MaterialStateProperty.all(3),
                                        shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                        overlayColor: MaterialStateProperty
                                            .resolveWith<Color>(
                                          (states) => Colors.transparent,
                                        ),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical:
                                                12.0), // Adjust vertical padding as needed
                                        child: Text(
                                          'Sign In',
                                          style: TextStyle(
                                            fontFamily: 'Tinos',
                                            color: Colors.white,
                                            fontSize: 16,
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      // options: FFButtonOptions(
                                      //   width: double.infinity,
                                      //   height: 39,
                                      //   padding: EdgeInsetsDirectional.fromSTEB(
                                      //       0, 0, 0, 0),
                                      //   iconPadding:
                                      //       EdgeInsetsDirectional.fromSTEB(
                                      //           0, 0, 0, 0),
                                      //   color: Color(0xFF18651A),
                                      //   textStyle: FlutterFlowTheme.of(context)
                                      //       .titleSmall
                                      //       .override(
                                      //         fontFamily: 'Tinos',
                                      //         color: Colors.white,
                                      //         fontSize: 16,
                                      //         letterSpacing: 0,
                                      //         fontWeight: FontWeight.w500,
                                      //       ),
                                      //   elevation: 3,
                                      //   borderSide: BorderSide(
                                      //     color: Colors.transparent,
                                      //     width: 1,
                                      //   ),
                                      //   borderRadius: BorderRadius.circular(12),
                                      // ),
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
                                                  color: Color(0xFFF1F4F8),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Container(
                                              width: 70,
                                              height: 32,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Text(
                                                'OR',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 16),
                                    child: TextButton(
                                      onPressed: () async {
                                        // GoRouter.of(context).prepareAuthEvent();
                                        // final user = await authManager
                                        //     .signInWithGoogle(context);
                                        // if (user == null) {
                                        //   return;
                                        // }
                                        // context.goNamedAuth(
                                        //     'null', context.mounted);
                                      },
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty
                                            .resolveWith<Color>(
                                                (states) => Color(0xFFFAFFCE)),
                                        padding: MaterialStateProperty.all(
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 0),
                                        ),
                                        elevation: MaterialStateProperty.all(0),
                                        shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                        overlayColor: MaterialStateProperty
                                            .resolveWith<Color>(
                                          (states) => Color(0xFFFAFFCE),
                                        ),
                                        side: MaterialStateProperty.resolveWith<
                                            BorderSide>(
                                          (states) => BorderSide(
                                            color: Color(0xFFE0E3E7),
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 12.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            // FaIcon(
                                            //   FontAwesomeIcons.google,
                                            //   size: 20,
                                            // ),
                                            SizedBox(
                                                width:
                                                    8), // Adjust the spacing between icon and text
                                            Text(
                                              'Continue with Google',
                                              style: TextStyle(
                                                fontFamily: 'Tinos',
                                                color: Color(0xFF101213),
                                                fontSize: 16,
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // FFButtonWidget(
                                    //   onPressed: () async {
                                    //     GoRouter.of(context).prepareAuthEvent();
                                    //     final user = await authManager
                                    //         .signInWithGoogle(context);
                                    //     if (user == null) {
                                    //       return;
                                    //     }

                                    //     context.goNamedAuth(
                                    //         'null', context.mounted);
                                    //   },
                                    //   text: 'Continue with Google',
                                    //   icon: FaIcon(
                                    //     FontAwesomeIcons.google,
                                    //     size: 20,
                                    //   ),
                                    //   options: FFButtonOptions(
                                    //     width: double.infinity,
                                    //     height: 44,
                                    //     padding: EdgeInsetsDirectional.fromSTEB(
                                    //         0, 0, 0, 0),
                                    //     iconPadding:
                                    //         EdgeInsetsDirectional.fromSTEB(
                                    //             0, 0, 0, 0),
                                    //     color: Color(0xFFFAFFCE),
                                    //     textStyle: FlutterFlowTheme.of(context)
                                    //         .titleSmall
                                    //         .override(
                                    //           fontFamily: 'Tinos',
                                    //           color: Color(0xFF101213),
                                    //           fontSize: 16,
                                    //           letterSpacing: 0,
                                    //           fontWeight: FontWeight.w500,
                                    //         ),
                                    //     elevation: 0,
                                    //     borderSide: BorderSide(
                                    //       color: Color(0xFFE0E3E7),
                                    //       width: 2,
                                    //     ),
                                    //     borderRadius: BorderRadius.circular(12),
                                    //     hoverColor: Color(0xFFFAFFCE),
                                    //   ),
                                    // ),
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
                                                ..onTap = () {
                                                  // Navigate to the sign-up page here
                                                  Navigator.of(context)
                                                      .push(MaterialPageRoute(
                                                    builder: (context) =>
                                                        const SignUpWidget(),
                                                  ));
                                                },
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
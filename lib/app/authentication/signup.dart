import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:virtuous_ai/app/authentication/login.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  // late SignUpModel _model;

  // final scaffoldKey = GlobalKey<ScaffoldState>();

  // final animationsMap = {
  //   'columnOnPageLoadAnimation': AnimationInfo(
  //     trigger: AnimationTrigger.onPageLoad,
  //     effects: [
  //       FadeEffect(
  //         curve: Curves.easeInOut,
  //         delay: 0.ms,
  //         duration: 300.ms,
  //         begin: 0,
  //         end: 1,
  //       ),
  //       MoveEffect(
  //         curve: Curves.easeInOut,
  //         delay: 0.ms,
  //         duration: 300.ms,
  //         begin: Offset(0, 60),
  //         end: Offset(0, 0),
  //       ),
  //       TiltEffect(
  //         curve: Curves.easeInOut,
  //         delay: 0.ms,
  //         duration: 300.ms,
  //         begin: Offset(-0.349, 0),
  //         end: Offset(0, 0),
  //       ),
  //     ],
  //   ),
  // };

  // @override
  // void initState() {
  //   super.initState();
  //   _model = createModel(context, () => SignUpModel());

  //   _model.tabBarController = TabController(
  //     vsync: this,
  //     length: 1,
  //     initialIndex: 0,
  //   )..addListener(() => setState(() {}));
  //   _model.emailAddressCreateController ??= TextEditingController();
  //   _model.emailAddressCreateFocusNode ??= FocusNode();

  //   _model.passwordCreateController ??= TextEditingController();
  //   _model.passwordCreateFocusNode ??= FocusNode();

  //   _model.passwordConfirmController ??= TextEditingController();
  //   _model.passwordConfirmFocusNode ??= FocusNode();
  // }

  // @override
  // void dispose() {
  //   _model.dispose();

  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => _model.unfocusNode.canRequestFocus
      //     ? FocusScope.of(context).requestFocus(_model.unfocusNode)
      //     : FocusScope.of(context).unfocus(),
      child: Scaffold(
        // key: scaffoldKey,
        backgroundColor: const Color(0xFF132A13),
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 8,
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: 602,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                              ),
                            ),
                            alignment: AlignmentDirectional(-1, 0),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 700,
                          constraints: BoxConstraints(
                            maxWidth: 602,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                            child: Column(
                              children: [
                                Text('Sign Up',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge),
                                // Align(
                                //   alignment: Alignment(-1, 0),
                                //   child: TabBar(
                                //     isScrollable: true,
                                //     labelColor: FlutterFlowTheme.of(context)
                                //         .primaryText,
                                //     unselectedLabelColor:
                                //         FlutterFlowTheme.of(context)
                                //             .secondaryText,
                                //     labelPadding: EdgeInsets.all(16),
                                //     labelStyle: FlutterFlowTheme.of(context)
                                //         .displaySmall
                                //         .override(
                                //           fontFamily: 'Tinos',
                                //           letterSpacing: 0,
                                //         ),
                                //     unselectedLabelStyle:
                                //         FlutterFlowTheme.of(context)
                                //             .displaySmall
                                //             .override(
                                //               fontFamily: 'Outfit',
                                //               letterSpacing: 0,
                                //               fontWeight: FontWeight.normal,
                                //             ),
                                //     indicatorColor: Color(0xFF18651A),
                                //     indicatorWeight: 4,
                                //     padding: EdgeInsetsDirectional.fromSTEB(
                                //         0, 12, 16, 12),
                                //     tabs: [
                                //       Tab(
                                //         text: 'Sign Up',
                                //       ),
                                //     ],
                                //     // controller: _model.tabBarController,
                                //     onTap: (i) async {
                                //       [() async {}][i]();
                                //     },
                                //   ),
                                // ),

                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 12, 12),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 12, 0, 24),
                                            child: Text(
                                                'Let\'s get started by filling out the information below.',
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 16),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                // controller: _model
                                                //     .emailAddressCreateController,
                                                // focusNode: _model
                                                //     .emailAddressCreateFocusNode,
                                                autofocus: true,
                                                autofillHints: [
                                                  AutofillHints.email
                                                ],
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Email',
                                                  labelStyle: Theme.of(context)
                                                      .textTheme
                                                      .headlineLarge,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFF132A13),
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFF132A13),
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFF132A13),
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      const Color(0xFFF6FAD1),
                                                  contentPadding:
                                                      EdgeInsets.all(24),
                                                ),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineLarge,
                                                minLines: null,
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                // cursorColor:
                                                //     FlutterFlowTheme.of(
                                                //             context)
                                                //         .primary,
                                                // validator: _model
                                                //     .emailAddressCreateControllerValidator
                                                //     .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 16),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                // controller: _model
                                                //     .passwordCreateController,
                                                // focusNode: _model
                                                //     .passwordCreateFocusNode,
                                                autofocus: false,
                                                autofillHints: [
                                                  AutofillHints.password
                                                ],
                                                // obscureText: !_model
                                                //     .passwordCreateVisibility,
                                                decoration: InputDecoration(
                                                  labelText: 'Password',
                                                  labelStyle: Theme.of(context)
                                                      .textTheme
                                                      .headlineLarge,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFF132A13),
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFF132A13),
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFF132A13),
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      const Color(0xFFF6FAD1),
                                                  contentPadding:
                                                      EdgeInsets.all(24),
                                                  suffixIcon: InkWell(
                                                    // onTap: () => setState(
                                                    //   () => _model
                                                    //           .passwordCreateVisibility =
                                                    //       !_model
                                                    //           .passwordCreateVisibility,
                                                    // ),
                                                    focusNode: FocusNode(
                                                        skipTraversal: true),
                                                    child: Icon(
                                                      // _model.passwordCreateVisibility
                                                      //     ? Icons
                                                      //         .visibility_outlined
                                                      //     :
                                                      Icons
                                                          .visibility_off_outlined,
                                                      color: Color(0xFF57636C),
                                                      size: 24,
                                                    ),
                                                  ),
                                                ),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineLarge,
                                                minLines: null,
                                                // cursorColor:
                                                //     FlutterFlowTheme.of(
                                                //             context)
                                                //         .primary,
                                                // validator: _model
                                                //     .passwordCreateControllerValidator
                                                //     .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 16),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                // controller: _model
                                                //     .passwordConfirmController,
                                                // focusNode: _model
                                                //     .passwordConfirmFocusNode,
                                                autofocus: false,
                                                autofillHints: [
                                                  AutofillHints.password
                                                ],
                                                // obscureText: !_model
                                                //     .passwordConfirmVisibility,
                                                decoration: InputDecoration(
                                                  labelText: 'Confirm Password',
                                                  labelStyle: Theme.of(context)
                                                      .textTheme
                                                      .headlineLarge,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFF132A13),
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFF132A13),
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFF132A13),
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      const Color(0xFFF6FAD1),
                                                  contentPadding:
                                                      EdgeInsets.all(24),
                                                  suffixIcon: InkWell(
                                                    // onTap: () => setState(
                                                    //   () => _model
                                                    //           .passwordConfirmVisibility =
                                                    //       !_model
                                                    //           .passwordConfirmVisibility,
                                                    // ),
                                                    focusNode: FocusNode(
                                                        skipTraversal: true),
                                                    child: Icon(
                                                      // _model.passwordConfirmVisibility
                                                      //     ? Icons
                                                      //         .visibility_outlined
                                                      //     :
                                                      Icons
                                                          .visibility_off_outlined,
                                                      color: Color(0xFF57636C),
                                                      size: 24,
                                                    ),
                                                  ),
                                                ),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineLarge,
                                                // cursorColor:
                                                //     FlutterFlowTheme.of(
                                                //             context)
                                                //         .primary,
                                                // validator: _model
                                                //     .passwordConfirmControllerValidator
                                                //     .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          // Align(
                                          //   alignment:
                                          //       AlignmentDirectional(0, 0),
                                          //   child: Padding(
                                          //     padding: EdgeInsetsDirectional
                                          //         .fromSTEB(0, 0, 0, 16),
                                          //     child: FFButtonWidget(
                                          //       onPressed: () async {
                                          //         GoRouter.of(context)
                                          //             .prepareAuthEvent();
                                          //         if (_model
                                          //                 .passwordCreateController
                                          //                 .text !=
                                          //             _model
                                          //                 .passwordConfirmController
                                          //                 .text) {
                                          //           ScaffoldMessenger.of(
                                          //                   context)
                                          //               .showSnackBar(
                                          //             SnackBar(
                                          //               content: Text(
                                          //                 'Passwords don\'t match!',
                                          //               ),
                                          //             ),
                                          //           );
                                          //           return;
                                          //         }

                                          //         final user = await authManager
                                          //             .createAccountWithEmail(
                                          //           context,
                                          //           _model
                                          //               .emailAddressCreateController
                                          //               .text,
                                          //           _model
                                          //               .passwordCreateController
                                          //               .text,
                                          //         );
                                          //         if (user == null) {
                                          //           return;
                                          //         }

                                          //         context.goNamedAuth(
                                          //             'null',
                                          //             context.mounted);
                                          //       },
                                          //       text: 'Create Account',
                                          //       options: FFButtonOptions(
                                          //         width: 230,
                                          //         height: 52,
                                          //         padding:
                                          //             EdgeInsetsDirectional
                                          //                 .fromSTEB(
                                          //                     0, 0, 0, 0),
                                          //         iconPadding:
                                          //             EdgeInsetsDirectional
                                          //                 .fromSTEB(
                                          //                     0, 0, 0, 0),
                                          //         color: Color(0xFF18651A),
                                          //         textStyle:
                                          //             FlutterFlowTheme.of(
                                          //                     context)
                                          //                 .titleSmall
                                          //                 .override(
                                          //                   fontFamily:
                                          //                       'Tinos',
                                          //                   color: Colors
                                          //                       .white,
                                          //                   letterSpacing:
                                          //                       0,
                                          //                 ),
                                          //         elevation: 3,
                                          //         borderSide: BorderSide(
                                          //           color:
                                          //               Colors.transparent,
                                          //           width: 1,
                                          //         ),
                                          //         borderRadius:
                                          //             BorderRadius.circular(
                                          //                 40),
                                          //       ),
                                          //     ),
                                          //   ),
                                          // ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 16, 24),
                                                  child: Text(
                                                    'Or sign up with',
                                                    textAlign: TextAlign.center,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headlineMedium,
                                                  ),
                                                ),
                                              ),
                                              // Align(
                                              //   alignment:
                                              //       AlignmentDirectional(
                                              //           0, 0),
                                              //   child: Padding(
                                              //     padding:
                                              //         EdgeInsetsDirectional
                                              //             .fromSTEB(0, 0,
                                              //                 0, 16),
                                              //     child: Wrap(
                                              //       spacing: 16,
                                              //       runSpacing: 0,
                                              //       alignment:
                                              //           WrapAlignment
                                              //               .center,
                                              //       crossAxisAlignment:
                                              //           WrapCrossAlignment
                                              //               .center,
                                              //       direction:
                                              //           Axis.horizontal,
                                              //       runAlignment:
                                              //           WrapAlignment
                                              //               .center,
                                              //       verticalDirection:
                                              //           VerticalDirection
                                              //               .down,
                                              //       clipBehavior:
                                              //           Clip.none,
                                              //       children: [
                                              //         Padding(
                                              //           padding:
                                              //               EdgeInsetsDirectional
                                              //                   .fromSTEB(
                                              //                       0,
                                              //                       0,
                                              //                       0,
                                              //                       16),
                                              //           child:
                                              //               FFButtonWidget(
                                              //             onPressed:
                                              //                 () async {
                                              //               GoRouter.of(
                                              //                       context)
                                              //                   .prepareAuthEvent();
                                              //               final user =
                                              //                   await authManager
                                              //                       .signInWithGoogle(
                                              //                           context);
                                              //               if (user ==
                                              //                   null) {
                                              //                 return;
                                              //               }

                                              //               context.goNamedAuth(
                                              //                   'null',
                                              //                   context
                                              //                       .mounted);
                                              //             },
                                              //             text:
                                              //                 'Continue with Google',
                                              //             icon: FaIcon(
                                              //               FontAwesomeIcons
                                              //                   .google,
                                              //               size: 20,
                                              //             ),
                                              //             options:
                                              //                 FFButtonOptions(
                                              //               width: 230,
                                              //               height: 44,
                                              //               padding: EdgeInsetsDirectional
                                              //                   .fromSTEB(
                                              //                       0,
                                              //                       0,
                                              //                       0,
                                              //                       0),
                                              //               iconPadding:
                                              //                   EdgeInsetsDirectional
                                              //                       .fromSTEB(
                                              //                           0,
                                              //                           0,
                                              //                           0,
                                              //                           0),
                                              //               color: Color(
                                              //                   0xFFFAFFCE),
                                              //               textStyle: FlutterFlowTheme.of(
                                              //                       context)
                                              //                   .bodyMedium
                                              //                   .override(
                                              //                     fontFamily:
                                              //                         'Tinos',
                                              //                     letterSpacing:
                                              //                         0,
                                              //                     fontWeight:
                                              //                         FontWeight.bold,
                                              //                   ),
                                              //               elevation: 0,
                                              //               borderSide:
                                              //                   BorderSide(
                                              //                 color: FlutterFlowTheme.of(
                                              //                         context)
                                              //                     .primaryBackground,
                                              //                 width: 2,
                                              //               ),
                                              //               borderRadius:
                                              //                   BorderRadius
                                              //                       .circular(
                                              //                           40),
                                              //               hoverColor: FlutterFlowTheme.of(
                                              //                       context)
                                              //                   .primaryBackground,
                                              //             ),
                                              //           ),
                                              //         ),
                                              //         isAndroid
                                              //             ? Container()
                                              //             : Padding(
                                              //                 padding: EdgeInsetsDirectional
                                              //                     .fromSTEB(
                                              //                         0,
                                              //                         0,
                                              //                         0,
                                              //                         16),
                                              //                 child:
                                              //                     FFButtonWidget(
                                              //                   onPressed:
                                              //                       () async {
                                              //                     GoRouter.of(context)
                                              //                         .prepareAuthEvent();
                                              //                     final user =
                                              //                         await authManager.signInWithApple(context);
                                              //                     if (user ==
                                              //                         null) {
                                              //                       return;
                                              //                     }

                                              //                     context.goNamedAuth(
                                              //                         'null',
                                              //                         context.mounted);
                                              //                   },
                                              //                   text:
                                              //                       'Continue with Apple',
                                              //                   icon:
                                              //                       FaIcon(
                                              //                     FontAwesomeIcons
                                              //                         .apple,
                                              //                     size:
                                              //                         20,
                                              //                   ),
                                              //                   options:
                                              //                       FFButtonOptions(
                                              //                     width:
                                              //                         230,
                                              //                     height:
                                              //                         44,
                                              //                     padding: EdgeInsetsDirectional.fromSTEB(
                                              //                         0,
                                              //                         0,
                                              //                         0,
                                              //                         0),
                                              //                     iconPadding: EdgeInsetsDirectional.fromSTEB(
                                              //                         0,
                                              //                         0,
                                              //                         0,
                                              //                         0),
                                              //                     color: Color(
                                              //                         0xFFFAFFCE),
                                              //                     textStyle: FlutterFlowTheme.of(context)
                                              //                         .bodyMedium
                                              //                         .override(
                                              //                           fontFamily: 'Tinos',
                                              //                           letterSpacing: 0,
                                              //                           fontWeight: FontWeight.bold,
                                              //                         ),
                                              //                     elevation:
                                              //                         0,
                                              //                     borderSide:
                                              //                         BorderSide(
                                              //                       color:
                                              //                           FlutterFlowTheme.of(context).primaryBackground,
                                              //                       width:
                                              //                           2,
                                              //                     ),
                                              //                     borderRadius:
                                              //                         BorderRadius.circular(40),
                                              //                     hoverColor:
                                              //                         FlutterFlowTheme.of(context).primaryBackground,
                                              //                   ),
                                              //                 ),
                                              //               ),
                                              //       ],
                                              //     ),
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                        ],
                                      )
                                      // .animateOnPageLoad(animationsMap[
                                      //     'columnOnPageLoadAnimation']!),
                                      ),
                                ),
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
                                                    color:
                                                        const Color(0xFF132A13),
                                                    fontWeight:
                                                        FontWeight.w600),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                // Navigate to the sign-up page here
                                                Navigator.of(context)
                                                    .push(MaterialPageRoute(
                                                  builder: (context) =>
                                                      const LoginWidget(),
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
                      ],
                    ),
                  ),
                ),
              ),
              // if (responsiveVisibility(
              //   context: context,
              //   phone: false,
              //   tablet: false,
              // ))
              //   Expanded(
              //     flex: 6,
              //     child: Container(
              //       width: 100,
              //       height: double.infinity,
              //       decoration: BoxDecoration(
              //         color: FlutterFlowTheme.of(context).secondaryBackground,
              //         image: DecorationImage(
              //           fit: BoxFit.cover,
              //           image: CachedNetworkImageProvider(
              //             'https://images.unsplash.com/photo-1508385082359-f38ae991e8f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
              //           ),
              //         ),
              //         borderRadius: BorderRadius.circular(0),
              //       ),
              //     ),
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}

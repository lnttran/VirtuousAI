import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AboutUsPageWidget extends StatefulWidget {
  const AboutUsPageWidget({super.key});

  @override
  State<AboutUsPageWidget> createState() => _AboutUsPageWidgetState();
}

class _AboutUsPageWidgetState extends State<AboutUsPageWidget> {
  // late AboutUsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  // @override
  // void initState() {
  //   super.initState();
  //   _model = createModel(context, () => AboutUsPageModel());

  //   // On page load action.
  //   SchedulerBinding.instance.addPostFrameCallback((_) async {
  //     context.pushNamed('null');
  //   });
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
        key: scaffoldKey,
        backgroundColor: Theme.of(context).colorScheme.outline,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 390,
                height: 1014,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -2),
                        child: Container(
                          width: 394,
                          height: 138,
                          // decoration: BoxDecoration(
                          //   // color: FlutterFlowTheme.of(context).alternate,
                          //   image: DecorationImage(
                          //     fit: BoxFit.cover,
                          //     image: Image.network(
                          //       'https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw3fHxBSSUyMEdyZWVufGVufDB8fHx8MTcxMTM4OTU2OHww&ixlib=rb-4.0.3&q=80&w=1080',
                          //     ).image,
                          //   ),
                          //   shape: BoxShape.rectangle,
                          // ),
                          // child: Row(
                          //   mainAxisSize: MainAxisSize.max,
                          //   children: [
                          //     ClipRRect(
                          //       borderRadius: BorderRadius.circular(8),
                          //       child: Image.network(
                          //         'https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw3fHxBSSUyMEdyZWVufGVufDB8fHx8MTcxMTM4OTU2OHww&ixlib=rb-4.0.3&q=80&w=1080',
                          //         width: 392,
                          //         height: 200,
                          //         fit: BoxFit.cover,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                        ),
                      ),
                      Align(
                        // alignment: AlignmentDirectional(-1, 0),
                        child: Container(
                          width: 392,
                          height: 1359,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  // alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Text(
                                      'About the Team!\n',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge,
                                    ),
                                  ),
                                ),
                                // ClipRRect(
                                //   borderRadius: BorderRadius.circular(8),
                                //   child: Image.asset(
                                //     'assets/images/IMG_1332.png',
                                //     width: 200,
                                //     height: 200,
                                //     fit: BoxFit.cover,
                                //   ),
                                // ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Text(
                                    'Caleb Gould \n\nJunior: B.A. in Journalism, with a minor in\nComputer Science\n',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                                // ClipRRect(
                                //   borderRadius: BorderRadius.circular(8),
                                //   child: Image.asset(
                                //     'assets/images/Screenshot_2024-03-25_at_3.38.30_PM.png',
                                //     width: 200,
                                //     height: 200,
                                //     fit: BoxFit.cover,
                                //   ),
                                // ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Text(
                                    'Ridhi Ralli\n\nJunior: B.B.A. Finance with a Specialization in Entrepreneurship and a B.A. in Computer Science\n\n',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                                // ClipRRect(
                                //   borderRadius: BorderRadius.circular(8),
                                //   child: Image.asset(
                                //     'assets/images/Screenshot_2024-03-25_at_3.38.16_PM.png',
                                //     width: 200,
                                //     height: 200,
                                //     fit: BoxFit.cover,
                                //   ),
                                // ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Text(
                                    'Tran Lam\n\nJunior: B.A. in Computer Science\n\n',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () async {
                                    try {
                                      await FirebaseAuth.instance.signOut();
                                      // Navigate to the login page or any other desired page after logout
                                      // Example: Navigator.of(context).pushReplacementNamed('/login');
                                    } catch (e) {
                                      print('Error signing out: $e');
                                    }
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors
                                        .red, // Change the button color as needed
                                  ),
                                  child: const Text(
                                    'Logout',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                                // FFButtonWidget(
                                //   onPressed: () {
                                //     print('Button pressed ...');
                                //   },
                                //   text: ' Learn how to use our app!',
                                //   options: FFButtonOptions(
                                //     height: 40,
                                //     padding: EdgeInsetsDirectional.fromSTEB(
                                //         24, 0, 24, 0),
                                //     iconPadding: EdgeInsetsDirectional.fromSTEB(
                                //         0, 0, 0, 0),
                                //     color: FlutterFlowTheme.of(context)
                                //         .hunterGreen,
                                //     textStyle: FlutterFlowTheme.of(context)
                                //         .titleSmall
                                //         .override(
                                //           fontFamily: 'Noto Serif',
                                //           color: Colors.white,
                                //           letterSpacing: 0,
                                //         ),
                                //     elevation: 3,
                                //     borderSide: BorderSide(
                                //       color: Colors.transparent,
                                //       width: 1,
                                //     ),
                                //     borderRadius: BorderRadius.circular(8),
                                //   ),
                                // ),
                              ],
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
    );
  }
}

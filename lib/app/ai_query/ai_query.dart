// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import 'a_i_query_model.dart';
// export 'a_i_query_model.dart';

// class AIQueryWidget extends StatefulWidget {
//   const AIQueryWidget({super.key});

//   @override
//   State<AIQueryWidget> createState() => _AIQueryWidgetState();
// }

// class _AIQueryWidgetState extends State<AIQueryWidget> {
//   late AIQueryModel _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => AIQueryModel());

//     _model.textController ??= TextEditingController();
//     _model.textFieldFocusNode ??= FocusNode();
//   }

//   @override
//   void dispose() {
//     _model.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => _model.unfocusNode.canRequestFocus
//           ? FocusScope.of(context).requestFocus(_model.unfocusNode)
//           : FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
//         body: SafeArea(
//           top: true,
//           child: Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: BoxDecoration(
//               color: FlutterFlowTheme.of(context).secondaryBackground,
//             ),
//             child: Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(18, 14, 18, 14),
//               child: SingleChildScrollView(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(8),
//                       child: Image.asset(
//                         'assets/images/Gemini_Generated_Image_Background_Removed.png',
//                         width: 350,
//                         height: 380,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                       child: Text(
//                         'Your intelligent Ethical Companion',
//                         textAlign: TextAlign.center,
//                         style:
//                             FlutterFlowTheme.of(context).headlineLarge.override(
//                                   fontFamily: 'Noto Serif',
//                                   color: Color(0xFF143601),
//                                   letterSpacing: 0,
//                                 ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
//                       child: Text(
//                         'Please enter your ethical question in the textfield below, then select Neutral, For, or Against option for the relevant answer.',
//                         textAlign: TextAlign.center,
//                         style: FlutterFlowTheme.of(context).bodyMedium.override(
//                               fontFamily: 'Noto Serif',
//                               color: Color(0xFF245501),
//                               letterSpacing: 0,
//                             ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                       child: TextFormField(
//                         controller: _model.textController,
//                         focusNode: _model.textFieldFocusNode,
//                         autofocus: true,
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           isDense: false,
//                           alignLabelWithHint: false,
//                           hintText: 'Enter your ethical query here ...',
//                           hintStyle: FlutterFlowTheme.of(context)
//                               .bodyMedium
//                               .override(
//                                 fontFamily: 'Noto Serif',
//                                 color: FlutterFlowTheme.of(context).primaryText,
//                                 letterSpacing: 0,
//                               ),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Color(0xFFECF39E),
//                               width: 2,
//                             ),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Color(0xFF132A13),
//                               width: 2,
//                             ),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           errorBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Color(0xFFECF39E),
//                               width: 2,
//                             ),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           focusedErrorBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Color(0xFFECF39E),
//                               width: 2,
//                             ),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           filled: true,
//                           fillColor: Color(0xFFECF39E),
//                           contentPadding: EdgeInsets.all(20),
//                         ),
//                         style: FlutterFlowTheme.of(context).bodyMedium.override(
//                               fontFamily: 'Noto Serif',
//                               color: FlutterFlowTheme.of(context).primaryText,
//                               letterSpacing: 0,
//                             ),
//                         textAlign: TextAlign.start,
//                         minLines: null,
//                         validator:
//                             _model.textControllerValidator.asValidator(context),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           FFButtonWidget(
//                             onPressed: () {
//                               print('Button pressed ...');
//                             },
//                             text: 'For',
//                             options: FFButtonOptions(
//                               width: 110,
//                               height: 40,
//                               padding:
//                                   EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                               iconPadding:
//                                   EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                               color: Color(0xFFECF39E),
//                               textStyle: FlutterFlowTheme.of(context)
//                                   .titleSmall
//                                   .override(
//                                     fontFamily: 'Noto Serif',
//                                     color: Color(0xFF132A13),
//                                     letterSpacing: 0,
//                                     fontWeight: FontWeight.normal,
//                                   ),
//                               elevation: 3,
//                               borderSide: BorderSide(
//                                 color: Color(0xFF132A13),
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(20),
//                               hoverColor: Color(0xFF132A13),
//                               hoverBorderSide: BorderSide(
//                                 color: Color(0xFF132A13),
//                                 width: 2,
//                               ),
//                               hoverTextColor: FlutterFlowTheme.of(context)
//                                   .secondaryBackground,
//                             ),
//                           ),
//                           FFButtonWidget(
//                             onPressed: () {
//                               print('Button pressed ...');
//                             },
//                             text: 'Against',
//                             options: FFButtonOptions(
//                               width: 110,
//                               height: 40,
//                               padding:
//                                   EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                               iconPadding:
//                                   EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                               color: Color(0xFFECF39E),
//                               textStyle: FlutterFlowTheme.of(context)
//                                   .titleSmall
//                                   .override(
//                                     fontFamily: 'Noto Serif',
//                                     color: Color(0xFF132A13),
//                                     letterSpacing: 0,
//                                     fontWeight: FontWeight.normal,
//                                   ),
//                               elevation: 3,
//                               borderSide: BorderSide(
//                                 color: Color(0xFF132A13),
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(20),
//                               hoverColor: Color(0xFF132A13),
//                               hoverBorderSide: BorderSide(
//                                 color: Color(0xFF132A13),
//                                 width: 2,
//                               ),
//                               hoverTextColor: FlutterFlowTheme.of(context)
//                                   .secondaryBackground,
//                             ),
//                           ),
//                           FFButtonWidget(
//                             onPressed: () {
//                               print('Button pressed ...');
//                             },
//                             text: 'Neutral',
//                             options: FFButtonOptions(
//                               width: 110,
//                               height: 40,
//                               padding:
//                                   EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                               iconPadding:
//                                   EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                               color: Color(0xFFECF39E),
//                               textStyle: FlutterFlowTheme.of(context)
//                                   .titleSmall
//                                   .override(
//                                     fontFamily: 'Noto Serif',
//                                     color: Color(0xFF132A13),
//                                     letterSpacing: 0,
//                                     fontWeight: FontWeight.normal,
//                                   ),
//                               elevation: 3,
//                               borderSide: BorderSide(
//                                 color: Color(0xFF132A13),
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(20),
//                               hoverColor: Color(0xFF132A13),
//                               hoverBorderSide: BorderSide(
//                                 color: Color(0xFF132A13),
//                                 width: 2,
//                               ),
//                               hoverTextColor: FlutterFlowTheme.of(context)
//                                   .secondaryBackground,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
//                       child: Container(
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           color: Color(0xFF143601),
//                           borderRadius: BorderRadius.only(
//                             bottomLeft: Radius.circular(50),
//                             bottomRight: Radius.circular(50),
//                             topLeft: Radius.circular(50),
//                             topRight: Radius.circular(0),
//                           ),
//                           shape: BoxShape.rectangle,
//                         ),
//                         child: Padding(
//                           padding: EdgeInsets.all(30),
//                           child: Text(
//                             'The integration of AI algorithms in hiring processes presents both opportunities and challenges from an ethical standpoint. On one hand, AI can help standardize and streamline recruitment procedures, potentially reducing human biases that may exist in traditional hiring methods. By focusing solely on qualifications and skills, AI-driven systems can aim for greater objectivity in candidate evaluation.',
//                             style: FlutterFlowTheme.of(context)
//                                 .bodyMedium
//                                 .override(
//                                   fontFamily: 'Noto Serif',
//                                   color: FlutterFlowTheme.of(context)
//                                       .secondaryBackground,
//                                   letterSpacing: 0,
//                                 ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

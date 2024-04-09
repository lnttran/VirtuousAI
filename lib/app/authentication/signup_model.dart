// import '/flutter_flow/flutter_flow_animations.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'sign_up_widget.dart' show SignUpWidget;
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// class SignUpModel extends FlutterFlowModel<SignUpWidget> {
//   ///  State fields for stateful widgets in this page.

//   final unfocusNode = FocusNode();
//   // State field(s) for TabBar widget.
//   TabController? tabBarController;
//   int get tabBarCurrentIndex =>
//       tabBarController != null ? tabBarController!.index : 0;

//   // State field(s) for emailAddress_Create widget.
//   FocusNode? emailAddressCreateFocusNode;
//   TextEditingController? emailAddressCreateController;
//   String? Function(BuildContext, String?)?
//       emailAddressCreateControllerValidator;
//   // State field(s) for password_Create widget.
//   FocusNode? passwordCreateFocusNode;
//   TextEditingController? passwordCreateController;
//   late bool passwordCreateVisibility;
//   String? Function(BuildContext, String?)? passwordCreateControllerValidator;
//   // State field(s) for passwordConfirm widget.
//   FocusNode? passwordConfirmFocusNode;
//   TextEditingController? passwordConfirmController;
//   late bool passwordConfirmVisibility;
//   String? Function(BuildContext, String?)? passwordConfirmControllerValidator;

//   @override
//   void initState(BuildContext context) {
//     passwordCreateVisibility = false;
//     passwordConfirmVisibility = false;
//   }

//   @override
//   void dispose() {
//     unfocusNode.dispose();
//     tabBarController?.dispose();
//     emailAddressCreateFocusNode?.dispose();
//     emailAddressCreateController?.dispose();

//     passwordCreateFocusNode?.dispose();
//     passwordCreateController?.dispose();

//     passwordConfirmFocusNode?.dispose();
//     passwordConfirmController?.dispose();
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:virtuous_ai/app/authentication/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            onPrimary: const Color.fromARGB(255, 248, 250, 232),
            seedColor: const Color(0xFFF6FAD1),
            surface: const Color(0xFF90A955),
            outline: const Color(0xFF132A13),
            secondary: const Color(0xFF31572C),
            onSecondary: const Color(0xFF4F772D)),
        textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontFamily: 'Tinos',
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            displaySmall: TextStyle(
              fontFamily: 'Tinos',
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            headlineLarge: TextStyle(
              fontFamily: 'Tinos',
              color: Color(0xFF14181B),
              fontSize: 18,
              letterSpacing: 0,
              fontWeight: FontWeight.w500,
            ),
            headlineMedium: TextStyle(
              fontFamily: 'Tinos',
              color: Color(0xFF57636C),
              fontSize: 16,
              letterSpacing: 0,
              fontWeight: FontWeight.w500,
            )),
        useMaterial3: true,
      ),
      home: const Auth(),
    );
  }
}

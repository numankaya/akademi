import 'package:appjam/introduction_screen/onboarding.dart';
import 'package:appjam/screen/signin_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:appjam/firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromARGB(255, 0, 39, 77),
        ),
      ),
      home: OnboardingScreen(),
    );
  }
}

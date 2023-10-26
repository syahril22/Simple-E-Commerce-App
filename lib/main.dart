import 'package:ecommerce_ui/firebase_options.dart';
import 'package:ecommerce_ui/pages/welcome_page.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0XFFFAFF10),
        ).copyWith(
          background: const Color(0XFFFAFF10),
        ),
        fontFamily: "Inter",
      ),
      home: const WelcomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'signin.dart';
import 'signup.dart';
import 'dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignIn(),
      routes: {
        '/dashboard': (context) => DashboardScreen(),
        '/signup': (context) => SignUp(),
      },
    );
  }
}
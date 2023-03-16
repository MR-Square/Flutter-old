import 'package:flutter/material.dart';
import 'package:notes_app/views/pages/auth/login_page.dart';
import 'package:notes_app/views/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool isAuthenticated = false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: isAuthenticated ? const HomePage() : const LoginPage(),
    );
  }
}

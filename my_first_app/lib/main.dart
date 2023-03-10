import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // state variable
  String mytext = "My first App";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star),
                Center(
                  child: Text(
                    mytext,
                    style: const TextStyle(
                      fontSize: 30.0,
                      color: Color.fromARGB(255, 223, 95, 56),
                      letterSpacing: 5,
                      backgroundColor: Color.fromARGB(255, 134, 228, 241),
                    ),
                  ),
                ),
                const Icon(Icons.star),
              ],
            ),
            OutlinedButton(
              onPressed: () {
                mytext = "Flutter is best";
                // print("You haved cliked the button");
                setState(() {});
              },
              child: const Text("click me"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  mytext = "My First App";
                });
              },
              child: const Text("click me"),
            ),
          ],
        ),
      ),
    );
  }
}

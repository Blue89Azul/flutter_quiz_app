import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start_screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = activeScreen == 'start_screen'
        ? StartScreen(switchScreen)
        : const QuestionsScreen();

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.blue,
            Colors.blueAccent,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: screenWidget,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered X out of Y questions correctly!'),
            SizedBox(
              height: 30,
            ),
            Text('List of questions...'),
            SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz!' , style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextStylingScreen(),
    );
  }
}

class TextStylingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Styling App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title Text
            Text(
              'Flutter Text Styling',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0), // Spacing between title and subtitle
            // Subtitle Text
            Text(
              'Experiment with text styles',
              style: TextStyle(
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 10.0), // Spacing between subtitle and button
            // TextButton
            TextButton(
              onPressed: () {
                // Display SnackBar when button is pressed
                final snackBar = SnackBar(
                  content: Text('You clicked the button!'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text('Click Me'),
            ),
            SizedBox(height: 20.0), // Spacing between button and footer text
            // Footer Text with different style
            RichText(
              text: TextSpan(
                text: 'Welcome to ',
                style: DefaultTextStyle.of(context).style.copyWith(fontSize: 16.0),
                children: [
                  TextSpan(
                    text: 'Flutter!',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

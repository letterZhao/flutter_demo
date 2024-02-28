import 'package:flutter/material.dart';

void main() => runApp(MyHomeAPP());

class MyHomeAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextFieldAndFormTest',
      home: ProgressIndicatorestRoute(),
    );
  }
}

class ProgressIndicatorestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('progressIndicatorestTest'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        ],
      ),
    );
  }




import 'package:flutter/material.dart';

void main() => runApp(MyHomeAPP());

class MyHomeAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'text test',
      home: NewRoute(),
    );
  }
}

class NewRoute extends StatelessWidget {
  NewRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextStyle'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello world' * 6,
              textAlign: TextAlign.center,
            ),
            Text(
              'hello world' * 6,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            Text(
              'hello world',
              style: TextStyle(
                color: Colors.pink,
                fontFamily: 'Courier',
              ),
            ),
          ],
        ),
      ),
    );
  }

}

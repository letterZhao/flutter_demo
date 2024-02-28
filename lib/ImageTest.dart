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
        title: Text('ButtonStyle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 200,
              height: 200,
            ),
            Image.network(
              'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
              fit: BoxFit.none,
            ),
          ],
        ),
      ),
    );
  }
}

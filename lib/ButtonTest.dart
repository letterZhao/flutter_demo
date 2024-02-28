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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                print('send');
              },
              icon: Icon(Icons.send),
              label: Text('发送'),
            ),
            TextButton.icon(
              onPressed: () {
                print('save');
              },
              icon: Icon(Icons.save),
              label: Text('保存'),
            ),
            OutlinedButton.icon(
              onPressed: () {
                print('detail');
              },
              icon: Icon(Icons.details),
              label: Text('详情'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter  Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Flutter Demo HomePage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int state = 0;
  void incrementState() {
    setState(() {
      state++;
    });
  }

  void reset(){
    setState(() {
      state = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('you have pushed button this many times: '),
            Text(
              '$state',
              style: Theme.of(context).textTheme.headline4,
            ),

          ],
        ),
      ),



      floatingActionButton: FloatingActionButton(
        onPressed: incrementState,
        tooltip: 'increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

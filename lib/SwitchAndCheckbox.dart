import 'package:flutter/material.dart';

void main() => runApp(MyHomeAPP());

class MyHomeAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SwitchAndCheckBoxTest',
      home: SwitchAndCheckBoxTest(),
    );
  }
}

class SwitchAndCheckBoxTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CheckBoxTest();
  }
}

class CheckBoxTest extends State<SwitchAndCheckBoxTest> {
  bool switchValue = true;
  bool checkBoxValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'checkboxTest',
          textDirection: TextDirection.ltr,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            Checkbox(
              value: checkBoxValue,
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  checkBoxValue = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

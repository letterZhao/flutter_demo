import 'package:flutter/material.dart';

void main() => runApp(MyHomeAPP());

class MyHomeAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextFieldAndFormTest',
      home: FormTestRoute(),
    );
  }
}

class FormTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FormTestStateRoute();
}

class FormTestStateRoute extends State<FormTestRoute> {
  TextEditingController _userName = TextEditingController();
  TextEditingController _passWord = TextEditingController();
  GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fromTest'),
      ),
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //用户名
            TextFormField(
              autofocus: true,
              controller: _userName,
              decoration: InputDecoration(
                labelText: '用户名',
                hintText: '请输入用户名',
                icon: Icon(Icons.person),
              ),
              //用户名校验
              validator: (value) {
                return value!.trim().isEmpty ? '用户名不能为空' : null;
              },
            ),
            //密码
            TextFormField(
              autofocus: true,
              controller: _passWord,
              decoration: InputDecoration(
                labelText: "密码",
                hintText: "请输入密码",
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
              validator: (v) {
                return v!.trim().length < 5 ? '密码不能为空且不能少于5个字符' : null;
              },
            ),
            //登录按钮
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        //是否通过校验
                        bool pass =
                        (_formKey.currentState as FormState).validate();
                        if (pass) {
                          print('校验通过');
                        }
                      },
                      child: Text(
                        '登录',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontFamily: 'Courier'),
                      ),
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

class TextFieldAndFormTest extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();

  void setText() {
    textEditingController.text;
    textEditingController.selection =
        TextSelection(baseOffset: 1, extentOffset: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TextFieldAndFormTest',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              labelText: "用户名",
              hintText: "请输入用户名或邮箱",
              prefixIcon: Icon(Icons.person),
            ),
            controller: textEditingController,
            onChanged: (value) {
              print(textEditingController.text);
            },
          ),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              labelText: "密码",
              hintText: "请输入登录密码",
              prefixIcon: Icon(Icons.lock),
            ),
            obscureText: true,
            controller: textEditingController,
            // onChanged: (value){
            //   passWord = value;
            //   print(value);
            // },
          )
        ],
      ),
    );
  }
}

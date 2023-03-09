import 'package:flutter/material.dart';
import 'package:master_a_m_t/widgets/button_enter.dart';
import 'package:master_a_m_t/widgets/textfield_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextfieldInput(hintName: "Введите табельный номер"),
            TextfieldInput(hintName: "Введите пароль"),
            ButtonEnter(
              nameButton: "Войти",
              pressButton: () => Navigator.of(context)
                  .pushNamedAndRemoveUntil("/home_page", (route) => false),
            )
          ],
        ),
      ),
    );
  }
}

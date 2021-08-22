import 'package:agendamento_app/shared/components/form%20_login.dart';
import 'package:agendamento_app/shared/themes/App_Image.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.green[700],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.logoFull, height: 300, width: 200),
          FormLogin(),
        ],
      ),
    );
  }
}

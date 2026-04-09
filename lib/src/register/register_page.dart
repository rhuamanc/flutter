import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/utils/my_colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(top: -70, left: -100, child: _circle()),
            Positioned(top: 60, left: 35, child: _textRegister()),
            Positioned(top: 52, left: -5, child: _iconBack()),
          ],
        ),
      ),
    );
  }

  Widget _circle() {
    return Container(
      width: 300,
      height: 250,
      decoration: BoxDecoration(
        color: MyColors.primaryColor,
        borderRadius: BorderRadius.circular(120),
      ),
    );
  }

  Widget _loginButton() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: ElevatedButton(
        onPressed: () => {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 20),
        ),
        child: Text("INGRESAR"),
      ),
    );
  }

  Widget _iconBack() {
    return IconButton(
      onPressed: () {}, 
      icon: Icon(Icons.arrow_back_ios, color: Colors.white,)
      );
  }

  Widget _textRegister() {
      return Text(
          "REGISTRO",
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontFamily: 'Nimbus',
          ),
        );
  }
}

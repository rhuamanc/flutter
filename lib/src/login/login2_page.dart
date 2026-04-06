import 'package:flutter/material.dart';

class Login2Page extends StatefulWidget {
  const Login2Page({super.key});

  @override
  State<Login2Page> createState() => _Login2PageState();
}

class _Login2PageState extends State<Login2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        
      ),
      body: 
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Don't have an account?"),
            Text("Enter your email"),
            Text("Enter your email")
            ]
        )
    );
  }
}
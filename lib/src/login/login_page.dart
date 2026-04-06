import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        
      ),
      body: Column(
        children: [
          Text("Enter your email"),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Descripcion",
              ),
            ),
          ),
          ElevatedButton(
            onPressed: ()=>{},
            child: const Text("Login"),
          ),
          Checkbox(
            value: true,
            onChanged: (v) {},
          ),
          
        ],
      ),
      
    );
  }
}
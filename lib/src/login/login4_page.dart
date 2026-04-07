import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/utils/my_colors.dart';

class Login4Page extends StatefulWidget {
  const Login4Page({super.key});

  @override
  State<Login4Page> createState() => _Login4PageState();
}

class _Login4PageState extends State<Login4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /**appBar: AppBar(
        title: Text("Login 4", style: TextStyle(fontSize: 20, color: Colors.white)),
        backgroundColor: MyColors.primaryColor,
      ),**/
      body: Container(
        width: double.infinity,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            _imageBanner(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            _emailTextField(),
            SizedBox(height: 20),
            _passwordTextField(),
            SizedBox(height: 35),
            _loginButton(),
            SizedBox(height: 25),
            _textDontHaveAccount(),
          ],
        ),
      ),
    );
  }

  Widget _imageBanner() {
    return Image.asset(
      "assets/img/delivery.png",
      width: 200,
      height: 200,
    );
  }

  Widget _emailTextField() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: MyColors.primaryColorOpacity,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Correo Electrónico",
          hintStyle: TextStyle(color: MyColors.primaryColorDark),
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 25, right: 15),
            child: Icon(Icons.email, color: MyColors.primaryColor),
          ),
          //suffixIcon: Icon(Icons.email, color: MyColors.primaryColor),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(20)
        ),
      ),
    );
  }

  Widget _passwordTextField() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: Container(
              decoration: BoxDecoration(
                color: MyColors.primaryColorOpacity,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                //tipo contraseña
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Contraseña",
                  hintStyle: TextStyle(color: MyColors.primaryColorDark),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 25, right: 15),
                    child: Icon(Icons.password, color: MyColors.primaryColor,),
                  ),
                  //suffixIcon: Icon(Icons.password, color: MyColors.primaryColor),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20)
                  
                ),
                
              ),
            )
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

  Widget _textDontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("¿No tienes cuenta?", style: TextStyle(color: Theme.of(context).primaryColor)),
        SizedBox(width: 7),
        Text(
          "Registrate",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor
            ),
        ),
        //TextButton(onPressed: () => {}, child: Text("Sign Up")),
      ],
    );
  }
}

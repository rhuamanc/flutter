import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_application_1/src/login/LoginController.dart';
import 'package:flutter_application_1/src/utils/my_colors.dart';
import 'package:lottie/lottie.dart';

class Login4Page extends StatefulWidget {
  const Login4Page({super.key});

  @override
  State<Login4Page> createState() => _Login4PageState();
}

class _Login4PageState extends State<Login4Page> {

  LoginController _loginController = new LoginController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState");

    SchedulerBinding.instance.addPostFrameCallback((timestamp){
      print("SchedulerBinding");
      _loginController.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      /**appBar: AppBar(
        title: Text("Login 4", style: TextStyle(fontSize: 20, color: Colors.white)),
        backgroundColor: MyColors.primaryColor,
      ),**/
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(top: -70, left: -120, child: _circleLogin()),
            Positioned(top: 60, left: 35,child: _textLogin()),
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                _lottieAnimation(),
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
          ],
        ),
      ),
    );
  }

  Widget _textLogin(){
    return Text("LOGIN", style: TextStyle(color:Colors.white, fontSize: 26, fontFamily: 'Nimbus'),);
  }

  Widget _lottieAnimation() {
    return Lottie.asset(
      "assets/animations/delivery.json",
      width: 350,
      height: 200,
      fit: BoxFit.fill,
      );
  }

  Widget _circleLogin() {
    return Container(
      width: 300,
      height: 250,
      decoration: BoxDecoration(
        color: MyColors.primaryColor,
        borderRadius: BorderRadius.circular(120),
      ),
    );
  }

  Widget _imageBanner() {
    return Image.asset("assets/img/delivery.png", width: 200, height: 200);
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
          contentPadding: EdgeInsets.all(20),
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
              child: Icon(Icons.password, color: MyColors.primaryColor),
            ),
            //suffixIcon: Icon(Icons.password, color: MyColors.primaryColor),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(20),
          ),
        ),
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

  Widget _textDontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "¿No tienes cuenta?",
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        SizedBox(width: 7),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, 'registro'),
          child: Text(
            "Registrate",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        //TextButton(onPressed: () => {}, child: Text("Sign Up")),
      ],
    );
  }
}

import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/screens/components/inputs.dart';
import 'package:login_app/screens/components/login_button.dart';
import 'package:login_app/screens/components/plattaforms.dart';
import 'package:login_app/screens/register/register_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double keyboardSize = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: height * 0.35,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/image1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(22),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 15, bottom: 30 + keyboardSize),
                    child: Inputs(
                      isPassword: false,
                      controller: _emailController,
                      hintTxt: "Email ID",
                      icon: Platform.isIOS
                          ? const Icon(CupertinoIcons.bubble_left_fill)
                          : const Icon(Icons.email),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30 + keyboardSize),
                    child: Inputs(
                      isPassword: true,
                      controller: _passwordController,
                      hintTxt: "Password",
                      icon: Platform.isIOS
                          ? const Icon(CupertinoIcons.padlock_solid)
                          : const Icon(Icons.password),
                    ),
                  ),
                  LoginButton(onPressed: () {}),
                  const Text(
                    "Or, login with...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Plataforms(onTap: () {}),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "New to iThickLogistic? ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            )),
                        child: const Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

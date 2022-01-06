import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/screens/components/inputs.dart';
import 'package:login_app/screens/components/plattaforms.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  final TextEditingController fullNameCtrl = TextEditingController();
  final TextEditingController companyCtrl = TextEditingController();

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
                  image: AssetImage("assets/images/image2.jpg"),
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
                        "Sign up",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 28),
                    child: Plataforms(onTap: () {}),
                  ),
                  const Text(
                    "Or, register with Email...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 15, bottom: 30 + keyboardSize),
                    child: Inputs(
                      isPassword: false,
                      controller: emailCtrl,
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
                      controller: passwordCtrl,
                      hintTxt: "Password",
                      icon: Platform.isIOS
                          ? const Icon(CupertinoIcons.lock_fill)
                          : const Icon(Icons.password),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30 + keyboardSize),
                    child: Inputs(
                      isPassword: false,
                      controller: fullNameCtrl,
                      hintTxt: "Full name",
                      icon: Platform.isIOS
                          ? const Icon(CupertinoIcons.profile_circled)
                          : const Icon(Icons.wysiwyg_rounded),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30 + keyboardSize),
                    child: Inputs(
                      isPassword: false,
                      controller: companyCtrl,
                      hintTxt: "Company name",
                      icon: Platform.isIOS
                          ? const Icon(CupertinoIcons.bag_fill)
                          : const Icon(Icons.work),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

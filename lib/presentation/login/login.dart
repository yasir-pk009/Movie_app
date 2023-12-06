import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/presentation/login/widget/imageTile.dart';
import 'package:netflix_project/presentation/login/widget/signBottom.dart';
import 'package:netflix_project/presentation/login/widget/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailTextController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Icon(
                Icons.lock,
                size: 100,
                color: logipagewhite,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Welcome Back You Have been Missed ",
                style: TextStyle(color: logipagewhite, fontSize: 15),
              ),
              const SizedBox(
                height: 30,
              ),
              MytextField(
                hinttext: "Enter your email",
                obscure: false,
                controller: emailTextController,
              ),
              MytextField(
                hinttext: "Enter your password",
                obscure: true,
                controller: passwordController,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SignBotton(onTap: signIn,text: "signin",),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Continue WIth",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageTile(
                    imagePath: "assets/google.jpeg",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ImageTile(
                    imagePath: "assets/android.png",
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not an member ",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    "Register Now",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  void signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailTextController.text, password: passwordController.text);
  }
}

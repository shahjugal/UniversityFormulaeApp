// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../Widgets/f_textfield.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              SizedBox(
                height: 50,
              ),
              // ignore: prefer_const_constructors
              Text(
                "Get Started",
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20,
              ),
              // ignore: prefer_const_constructors
              Text(
                "Get your ass in!",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              fTextBox("University Email", false),
              SizedBox(
                height: 25,
              ),
              fTextBox("Password", true),
              SizedBox(height: 30),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 42, 42, 42),
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Not yet registered?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Forgotten Password?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Other options.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

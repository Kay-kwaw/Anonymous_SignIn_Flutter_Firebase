import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.white, Color.fromARGB(255, 147, 39, 20)])),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.7,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(196, 255, 192, 153),
                            blurRadius: 1,
                            offset: Offset(2, 6), // Shadow position
                          ),
                        ]),
                    child: Stack(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 40, horizontal: 0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        196, 255, 192, 153)),
                                onPressed: () async {},
                                child: const Text("  Sign In  "),
                              ),
                            ),
                          ])
                    ])))));
  }
}

import 'package:anonsignin/authenticate/signin.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignIn(),
    );
  }
}
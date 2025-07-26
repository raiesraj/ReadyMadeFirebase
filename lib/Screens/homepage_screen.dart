import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/sigin_provider.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();


    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              hintText: "Email",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
              hintText: "Password",
            ),
          ),
          TextButton(
            onPressed: () {
              context.read<SignInProvider>().signIn(
                  email: emailController.text,
                  password: passwordController.text,
                  context: context);
            },
            child: const Text("Continue"),
          ),
        ],
      ),
    );
  }
}
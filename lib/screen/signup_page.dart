import 'package:flutter/material.dart';

import 'package:saat/config/color.dart';
import 'package:saat/screen/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupState();
}

class _SignupState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/SaatLogo.png',
                height: 250,
                width: 250,
              ),
              const SizedBox(height: 0),
              const Text(
                "Get Started!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: blue3,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have account?"),
                  TextButton(
                      onPressed: () {
                        LoginPage;
                      },
                      child: const Text("Sign in"))
                ],
              ),
              TextFormField(
                textAlign: TextAlign.start,
                style: const TextStyle(),
                decoration: const InputDecoration(
                    hintText: 'Enter the username',
                    suffixIcon: Icon(Icons.person_2_rounded)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                textAlign: TextAlign.start,
                style: const TextStyle(),
                decoration: const InputDecoration(
                    hintText: 'Enter your email',
                    suffixIcon: Icon(Icons.alternate_email)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                textAlign: TextAlign.start,
                style: const TextStyle(),
                decoration: const InputDecoration(
                    hintText: 'Enter your phone',
                    suffixIcon: Icon(Icons.phone_android_outlined)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                textAlign: TextAlign.start,
                style: const TextStyle(),
                decoration: const InputDecoration(
                  hintText: 'Enter your password',
                  suffixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                textAlign: TextAlign.start,
                style: const TextStyle(),
                decoration: const InputDecoration(
                  hintText: 'Confirm password',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'signup',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

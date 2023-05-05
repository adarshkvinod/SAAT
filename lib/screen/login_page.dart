import 'package:flutter/material.dart';

import 'package:saat/config/color.dart';
import 'package:saat/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
              width: 50,
            ),
            Image.asset(
              'assets/images/SaatLogo.png',
              width: 300,
              height: 250,
            ),
            const Text(
              "Hello again!",
              style: TextStyle(
                  color: blue3,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                suffixIcon: Icon(
                  Icons.alternate_email,
                ),
                hoverColor: blue2,
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                suffixIcon: Icon(
                  Icons.lock,
                ),
                hintText: 'Enter your password',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {}, child: const Text("recover password")),
              ],
            ),
            const ElevatedButton(
                onPressed: main,
                child: Text(
                  'Login',
                )),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google_icon.png',
                      width: 20,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      'Login with google',
                    ),
                  ],
                )),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(onPressed: () {}, child: const Text("signup"))
              ],
            )
          ],
        ),
      ),
    ));
  }
}

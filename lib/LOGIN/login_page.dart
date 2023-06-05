import 'package:flutter/material.dart';

import 'package:saat/config/color.dart';
import 'package:saat/main.dart';
import 'package:saat/LOGIN/recovery_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
               width: width*0.28,
                height: height*0.14,
              child: Image.asset(
                'assets/images/SaatLogo.png',
               fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 40.0,
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
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>const RecoveryPassword()));
                    }, child: const Text("recover password")),
              ],
            ),
            const ElevatedButton(
                onPressed: main,
                child: Text(
                  'Login',
                ),),
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

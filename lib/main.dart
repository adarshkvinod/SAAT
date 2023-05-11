import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saat/config/color.dart';
import 'package:saat/screen/chat_screen.dart';
import 'package:saat/screen/home_page.dart';
import 'package:saat/screen/splash_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ChatScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: white,
        appBarTheme: const AppBarTheme(
          backgroundColor: white,
          elevation: 0,
          foregroundColor: blue2,
          // scrolledUnderElevation: 20,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
                side: const BorderSide(
                  color: blue1,
                  width: 2,
                ),
                elevation: 7,
                minimumSize: const Size(360, 50),
                backgroundColor: blue3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ))),
        inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: purewhite,
            hintStyle: TextStyle(color: black),
            suffixIconColor: black,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: purewhite, width: 2)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: white, width: 2))),
        popupMenuTheme: const PopupMenuThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          elevation: 7,
          color: purewhite,
        ),
        cardTheme: const CardTheme(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: blue2),
                borderRadius: BorderRadius.all(Radius.circular(20)))),
      ),
    );
  }
}

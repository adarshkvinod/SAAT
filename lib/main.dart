import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saat/config/color.dart';
import 'package:saat/screen/HOME/homepage_provider.dart';
import 'package:saat/screen/HOME/home_page.dart';
import 'package:saat/screen/LOGIN/login_page_provider.dart';
import 'services/firebase_options.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomePageProvider>(create: (context) => HomePageProvider(),),
        ChangeNotifierProvider<LoginPageProvider>(create: (context) => LoginPageProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(), // Home screen
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
              textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              side: const BorderSide(
                color: blue1,
                width: 2,
              ),
              elevation: 7,
              minimumSize: const Size(360, 50),
              backgroundColor: blue3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: purewhite,
            hintStyle: TextStyle(color: black),
            suffixIconColor: black,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              borderSide: BorderSide(color: purewhite, width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20.0,
                ),
              ),
              borderSide: BorderSide(color: white, width: 2.0),
            ),
          ),
          popupMenuTheme: const PopupMenuThemeData(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            elevation: 7,
            color: purewhite,
          ),
          cardTheme: const CardTheme(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: blue2),
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

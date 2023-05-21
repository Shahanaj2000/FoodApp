import 'package:flutter/material.dart';
import 'package:food_app/cont/colors.dart';
import 'package:food_app/screens/login_page.dart';

import './screens/spashscreen.dart';
import './screens/landingScreen.dart';

void main() {
  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      theme: ThemeData(
        fontFamily: 'Metropolis',
        primarySwatch: Colors.red,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: AppColor.secondary),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
            shape: MaterialStateProperty.all(const StadiumBorder()),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
      ),
      home: const SplashScreen(),
      routes: {
        LandingScreen.routeName: (context) => const LandingScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
      },
    );
  }
}

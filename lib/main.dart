import 'package:flutter/material.dart';
import 'package:food_app/cont/colors.dart';
import 'package:food_app/screens/forgetPwd.dart';
import 'package:food_app/screens/indroScreen.dart';
import 'package:food_app/screens/login_page.dart';
import 'package:food_app/screens/newPwd.dart';
import 'package:food_app/screens/sentOTPScreeen.dart';
import 'package:food_app/screens/signUpScreen.dart';

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
        
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
            shape: MaterialStateProperty.all(const StadiumBorder()),
            elevation: MaterialStateProperty.all(0),
          ),
        ),

        textTheme: const TextTheme(
          titleLarge: TextStyle(color: AppColor.primary, fontSize: 25),
          bodyMedium: TextStyle(color: AppColor.secondary),
        ),
        
      ),
      home: const SplashScreen(),
      routes: {
        LandingScreen.routeName: (context) => const LandingScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        ForgetPwd.routeName: (context) => const ForgetPwd(),
        SendOTPScreen.routeName: (context) => const SendOTPScreen(),
        NewPassword.routeName: (context) => const NewPassword(),
        IndroScreen.routeName: (context) =>  IndroScreen(),
      },
    );
  }
}

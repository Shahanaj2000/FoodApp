import 'dart:async';

import 'package:flutter/material.dart';
import './landingScreen.dart';
import '../utils/helpers.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  late Timer _timer;


  @override
  void initState() {
    _timer = Timer(const Duration(milliseconds: 4000), () {
      //NavigateToNextScreen
      Navigator.of(context).pushReplacementNamed(LandingScreen.routeName);
     });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(Helper.getAssetName("splashIcon.png", "virtual"), fit: BoxFit.fill,),
            ),
            Align(alignment: Alignment.center, child: Image.asset(Helper.getAssetName("MealMonkeyLogo.png", "virtual")),)
          ],
        ),
      ),
    );
  }
}
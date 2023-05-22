import 'package:flutter/material.dart';
import 'package:food_app/screens/sentOTPScreeen.dart';
import '../utils/helpers.dart';
import '../widgets/customTextFeild.dart';

class ForgetPwd extends StatelessWidget {
  static const routeName = "/Forgetpwd";
  const ForgetPwd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Reset Password',
                  style: Helper.getTheme(context).titleLarge,
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Please enter your email to receive a link to create a new password via email',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                const CustomTextInput(hintText: 'Email'),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(SendOTPScreen.routeName);
                    },
                    child: const Text('Send'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

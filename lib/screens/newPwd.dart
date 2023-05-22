import 'package:flutter/material.dart';
import '../utils/helpers.dart';
import '../widgets/customTextFeild.dart';

class NewPassword extends StatelessWidget {
  static const routeName = "/newPasswod";
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: Helper.getScreenWidth(context),
          height: Helper.getScreenHeight(context),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              children: [
                Text(
                  "New Password",
                  style: Helper.getTheme(context).titleLarge,
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Please enter your email to receive a link to create a new password via email",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextInput(hintText: "New Password"),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextInput(hintText: "Confirm Password"),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Next"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

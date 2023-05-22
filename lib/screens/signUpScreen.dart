import 'package:flutter/material.dart';
import '../cont/colors.dart';
import '../screens/login_page.dart';
import '../utils/helpers.dart';
import '../widgets/customTextFeild.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = "/signUpScreen";
  const SignUpScreen({super.key});

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
              children: [
                Text(
                  'Sign Up',
                  style: Helper.getTheme(context).titleLarge,
                ),
                const Spacer(),
                const Text('Add your details to sign up'),
                const Spacer(),
                const CustomTextInput(hintText: 'Name'),
                const Spacer(),
                const CustomTextInput(hintText: 'Email'),
                const Spacer(),
                const CustomTextInput(hintText: 'Mobile'),
                const Spacer(),
                const CustomTextInput(hintText: 'Address'),
                const Spacer(),
                const CustomTextInput(hintText: 'Password'),
                const Spacer(),
                const CustomTextInput(hintText: 'Confirm Password'),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('SignUp')),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const[
                      Text('Already have an Account?'),
                      Text('Login', style: TextStyle(color: AppColor.orange, fontWeight: FontWeight.bold),)
                    ],
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

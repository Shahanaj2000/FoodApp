import 'package:flutter/material.dart';
import '../cont/colors.dart';
import '../screens/signUpScreen.dart';
import '../utils/helpers.dart';

import '../widgets/customTextFeild.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/loginScreen";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                Text(
                  'Login',
                  style: Helper.getTheme(context).titleLarge,
                ),
                const Spacer(),
                const Text('Add your details to login'),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextInput(
                  hintText: 'Your email',
                ),
                const Spacer(),
                const CustomTextInput(hintText: 'password'),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Login')),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: const Text('Forget Your Password?'),
                ),
                const Spacer(flex: 2,),
                InkWell(
                  onTap: () {},
                  child: const Text('Or Login With'),
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 72, 116, 151))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Helper.getAssetName("fb.png", "virtual"),
                        ),
                        const SizedBox(width: 30,),
                        const Text('Login with Facebook')
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 211, 83, 74))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Helper.getAssetName("google.png", "virtual"),
                        ),
                        const SizedBox(width: 30,),
                        const Text('Login with Google')
                      ],
                    ),
                  ),
                ),
                const Spacer(flex: 4,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(SignUpScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                       Text("Don't have an Account?"), 
                       Text("SignUp", style: TextStyle(color: AppColor.orange, fontWeight: FontWeight.bold),)
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



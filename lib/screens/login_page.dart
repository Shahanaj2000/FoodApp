import 'package:flutter/material.dart';
import 'package:food_app/cont/colors.dart';
import 'package:food_app/utils/helpers.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/loginScreen";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                Spacer(),
                const Text('Add your details to login'),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextInput(
                  hintText: 'Your email',
                ),
                Spacer(),
                const CustomTextInput(hintText: 'password'),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Login')),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: const Text('Forget Your Password?'),
                ),
                Spacer(flex: 2,),
                InkWell(
                  onTap: () {},
                  child: const Text('Or Login With'),
                ),
                Spacer(),
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
                        SizedBox(width: 30,),
                        const Text('Login with Facebook')
                      ],
                    ),
                  ),
                ),
                Spacer(),
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
                Spacer(flex: 4,),
                InkWell(
                  onTap: () {},
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

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    required this.hintText,
    super.key,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: const ShapeDecoration(
        color: AppColor.placeholderBg,
        shape: StadiumBorder(),
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: AppColor.placeholder,
            ),
            contentPadding: const EdgeInsets.only(left: 40)),
      ),
    );
  }
}

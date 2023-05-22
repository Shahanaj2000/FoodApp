import 'package:flutter/material.dart';
import 'package:food_app/cont/colors.dart';
import 'package:food_app/screens/forgetPwd.dart';
import 'package:food_app/utils/helpers.dart';

class SendOTPScreen extends StatelessWidget {
  static const routeName = "/sendOTP";
  const SendOTPScreen({super.key});

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
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'We have send you an OTP to your Mobile',
                  style: Helper.getTheme(context).titleLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Please check your mobile number 091*******930 continue to reset your password',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    OTPInput(),
                    OTPInput(),
                    OTPInput(),
                    OTPInput(),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      
                    },
                    child: const Text('Next'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Text("Don't receive? "),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed(ForgetPwd.routeName);
                      },
                        child: const Text(
                      'Click Here',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: AppColor.orange),
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OTPInput extends StatelessWidget {
  const OTPInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: ShapeDecoration(
        color: AppColor.placeholderBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Stack(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 18, left: 20),
            child: Text(
              "*",
              style: TextStyle(fontSize: 45),
            ),
          ),
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ],
      ),
    );
  }
}

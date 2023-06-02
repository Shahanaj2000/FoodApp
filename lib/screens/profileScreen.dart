import 'package:flutter/material.dart';
import 'package:food_app/cont/colors.dart';
import 'package:food_app/utils/helpers.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = "/profileScreen";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SafeArea(
              child: Container(
                height: Helper.getScreenHeight(context),
                width: Helper.getScreenWidth(context),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Profile",
                            style: Helper.getTheme(context)
                                .headlineMedium!
                                .copyWith(color: AppColor.primary),
                          ),
                          Image.asset(
                            Helper.getAssetName("cart.png", "virtual"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              Helper.getAssetName("user.jpg", "real"),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 10,
                            child: Container(
                              height: 20,
                              width: 80,
                              color: Colors.transparent,
                              child: Image.asset(
                                Helper.getAssetName("camera.png", "virtual"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //! Edit Profile
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Helper.getAssetName("edit_filled.png", "virtual"),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "Edit Profile",
                            style: TextStyle(color: AppColor.orange),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Hi there Emilia!",
                        style: Helper.getTheme(context)
                            .headlineMedium!
                            .copyWith(color: AppColor.primary),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Sign Out"),
                      const SizedBox(
                        height: 40,
                      ),
                      const CustomFormInput(
                        label: "Name",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
      
                      const CustomFormInput(
                        label: "Email",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
      
                      const CustomFormInput(
                        label: "Mobile Number",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CustomFormInput(
                        label: "Address",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
      
                      const CustomFormInput(
                        label: "Password",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CustomFormInput(
                        label: "Confirm Password",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(onPressed: () {}, child: const Text("Send")),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomFormInput extends StatelessWidget {
  const CustomFormInput({
    super.key,
    required this.label,
  });

  final String label;

  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 40),
      decoration: const ShapeDecoration(
        shape: StadiumBorder(),
        color: AppColor.placeholderBg,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: label,
          contentPadding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
        ),
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

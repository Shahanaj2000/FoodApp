import 'package:flutter/material.dart';


class MoreScreen extends StatelessWidget {
  static const routeName = "/moreScreen";
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("MoreScreen"),
      ),
    );
  }
}
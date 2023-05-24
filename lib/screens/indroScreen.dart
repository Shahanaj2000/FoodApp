import 'package:flutter/material.dart';
import 'package:food_app/cont/colors.dart';
import 'package:food_app/utils/helpers.dart';

class IndroScreen extends StatefulWidget {
  static const routeName = "/indroScreen";

  @override
  State<IndroScreen> createState() => _IndroScreenState();
}

class _IndroScreenState extends State<IndroScreen> {
  var _controller;
  late int count;

  final List<Map<String, String>> _pages = [
    {
      "image": "vector1.png",
      "title": "Find Food You Love",
      "desc":
          "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
    },
    {
      "image": "vector2.png",
      "title": "Fast Delivery",
      "desc": "Fast food delivery to your home, office wherever you are",
    },
    {
      "image": "vector3.png",
      "title": "Live Tracking",
      "desc":
          "Real time tracking of your food on the app once you placed the order",
    },
  ];

  @override
  void initState() {
    _controller = PageController();
    count = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              SizedBox(
                height: 500,
                width: double.infinity,
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (value) {
                    setState(() {
                      count = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Image.asset(Helper.getAssetName(
                        _pages[index]["image"]!, "virtual"));
                  },
                  itemCount: _pages.length,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: count == 0 ? AppColor.orange : AppColor.placeholder,
                  ),
                  const SizedBox(width: 5,),
                   CircleAvatar(
                    radius: 5,
                    backgroundColor: count == 1 ? AppColor.orange : AppColor.placeholder,
                  ),
                  const SizedBox(width: 5,),
                   CircleAvatar(
                    radius: 5,
                    backgroundColor: count == 2 ? AppColor.orange : AppColor.placeholder,
                  ),
                  const SizedBox(width: 5,),
                ],
              ),
              SizedBox(height: 27,),
              Text(
                _pages[count]["title"]!,
                style: Helper.getTheme(context).titleLarge,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                _pages[count]["desc"]!,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: const Text('Next'),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/cont/colors.dart';
import 'package:food_app/utils/helpers.dart';
import 'package:food_app/widgets/customNavBar.dart';
import 'package:food_app/widgets/searchBar.dart';

class DessertScreen extends StatelessWidget {
  static const routeName = "/dessertScreen";
  const DessertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: AppColor.primary,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                "Dessert",
                                style: Helper.getTheme(context).headlineMedium,
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          Helper.getAssetName("cart.png", "virtual"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SearchBar(),
                  const SizedBox(
                    height: 20,
                  ),
                  DessertCard(
                    image: Image.asset(
                      Helper.getAssetName("breakfast.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "English Breakfast",
                    rating: "4.9",
                    shopName: "Bill's Soho",
                  ),
                  const SizedBox(height: 10,),
            
                  DessertCard(
                    image: Image.asset(
                      Helper.getAssetName("coffee3.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "Espresso",
                    rating: "4.6",
                    shopName: "49 Cafe",
                  ),
                  const SizedBox(height: 10,),
            
                  DessertCard(
                    image: Image.asset(
                      Helper.getAssetName("dessert4.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "Street Shake",
                    rating: "4.2",
                    shopName: "Ice Parlour",
                  ),
                  const SizedBox(height: 10,),
            
                  DessertCard(
                    image: Image.asset(
                      Helper.getAssetName("hamburger.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "ShackBurger",
                    rating: "4.9",
                    shopName: "Chikking",
                  ),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
          ),
          const Positioned(
            left: 0,
            bottom: 0,
            child: CustomNavBar(menu: true,),
          ),
        ],
      ),
    );
  }
}

class DessertCard extends StatelessWidget {
  const DessertCard({
    super.key,
    required this.name,
    required this.rating,
    required this.shopName,
    required this.image,
  });

  final String name;
  final String rating;
  final String shopName;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: image,
          ),
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.2),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 80,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Helper.getTheme(context)
                        .headlineMedium!
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        Helper.getAssetName("star_filled.png", "virtual"),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        rating,
                        style: const TextStyle(color: AppColor.orange),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        shopName,
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          ".",
                          style: TextStyle(color: AppColor.orange),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "Dessert",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

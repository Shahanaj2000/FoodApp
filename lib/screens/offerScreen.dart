import 'package:flutter/material.dart';
import 'package:food_app/cont/colors.dart';
import 'package:food_app/utils/helpers.dart';
import 'package:food_app/widgets/customNavBar.dart';

class OfferScreen extends StatelessWidget {
  static const routeName = "/offerScreen";
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              height: Helper.getScreenHeight(context),
              width: Helper.getScreenWidth(context),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Latest Offers",
                            style: Helper.getTheme(context).headlineMedium,
                          ),
                          Image.asset(
                            Helper.getAssetName("cart.png", "virtual"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: const [
                          Text("Find discounts, Special offers"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 30,
                            width: Helper.getScreenWidth(context) * 0.4,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("Check Offers"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    OfferCard(
                      name: "Coffee Hub",
                      rating: "4.3",
                      image: Image.asset(
                        Helper.getAssetName("coffee2.jpg", "real"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    OfferCard(
                      name: "English Hut",
                      rating: "4.7",
                      image: Image.asset(
                        Helper.getAssetName("breakfast.jpg", "real"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    OfferCard(
                      name: "Ice Palace",
                      rating: "4.0",
                      image: Image.asset(
                        Helper.getAssetName("dessert.jpg", "real"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    OfferCard(
                      name: "Burger Lounge",
                      rating: "4.7",
                      image: Image.asset(
                        Helper.getAssetName("hamburger.jpg", "real"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            left: 0,
            bottom: 0,
            child: CustomNavBar(
              offer: true,
              home: true,
            ),
          ),
        ],
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  const OfferCard({
    super.key,
    required this.name,
    required this.rating,
    required this.image,
  });

  final String name;
  final String rating;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppColor.placeholderBg,
      child: SizedBox(
        height: 310,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 240,
              width: double.infinity,
              child: image,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    name,
                    style: Helper.getTheme(context)
                        .headlineMedium!
                        .copyWith(color: AppColor.primary),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset(
                    Helper.getAssetName("star_filled.png", "virtual"),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    rating,
                    style: const TextStyle(color: AppColor.orange),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("(127 ratings)"),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("Cafe"),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    ".",
                    style: TextStyle(color: AppColor.orange),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("Western Food"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

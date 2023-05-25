import 'package:flutter/material.dart';
import '../cont/colors.dart';
import '../utils/helpers.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/homeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Good Morning shanu!",
                      style: Helper.getTheme(context).titleLarge,
                    ),
                    Image.asset(
                      Helper.getAssetName("cart.png", "virtual"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Delivering to"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: DropdownButtonHideUnderline(
                  child: SizedBox(
                    width: 250,
                    child: DropdownButton(
                      value: "Current Location",
                      items: const [
                        DropdownMenuItem(
                          value: "Current Location",
                          child: Text("Current Location"),
                        ),
                      ],
                      icon: Image.asset(
                        Helper.getAssetName("dropdown_filled.png", "virtual"),
                      ),
                      style: Helper.getTheme(context).headlineMedium,
                      onChanged: (_) {},
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const ShapeDecoration(
                    color: AppColor.placeholderBg,
                    shape: StadiumBorder(),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Image.asset(
                        Helper.getAssetName("search_filled.png", "virtual"),
                      ),
                      hintText: "Search Food!",
                      hintStyle: const TextStyle(
                          color: AppColor.placeholder, fontSize: 18),
                      contentPadding: const EdgeInsets.only(top: 17),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryCart(
                        image: Image.asset(
                          Helper.getAssetName("hamburger.jpg", "real"),
                          fit: BoxFit.cover,
                        ),
                        name: "Offers",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CategoryCart(
                        image: Image.asset(
                          Helper.getAssetName("rice2.jpg", "real"),
                          fit: BoxFit.cover,
                        ),
                        name: "Sri Lankan",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CategoryCart(
                        image: Image.asset(
                          Helper.getAssetName("pizza.jpg", "real"),
                          fit: BoxFit.cover,
                        ),
                        name: "Italian",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CategoryCart(
                        image: Image.asset(
                          Helper.getAssetName("fruit.jpg", "real"),
                          fit: BoxFit.cover,
                        ),
                        name: "Indian",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CategoryCart(
                        image: Image.asset(
                          Helper.getAssetName("western2.jpg", "real"),
                          fit: BoxFit.cover,
                        ),
                        name: "Chinese",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CategoryCart(
                        image: Image.asset(
                          Helper.getAssetName("rice.jpg", "real"),
                          fit: BoxFit.cover,
                        ),
                        name: "Arabian",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //! Popular Restaurants
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Rsetaurants",
                      style: Helper.getTheme(context).titleLarge,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("View all"),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RestaurantCard(
                image: Image.asset(Helper.getAssetName("pizza2.jpg", "real"), fit: BoxFit.cover,),
                name: "Minute by tuk tuk",
              ),

               RestaurantCard(
                image: Image.asset(Helper.getAssetName("breakfast.jpg", "real"), fit: BoxFit.cover,),
                name: "Cafe de Noir",
              ),

               RestaurantCard(
                image: Image.asset(Helper.getAssetName("bakery.jpg", "real"), fit: BoxFit.cover,),
                name: "Bakes by Tella",
              ),

              const SizedBox(
                height: 30,
              ),

              
              
              
            ],
          ),
        ),
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    super.key, required this.name, required this.image,
  });

  final String name;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: double.infinity,
      //color: Colors.red,
      child: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: image
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(name,
                        style: Helper.getTheme(context).displaySmall),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Image.asset(
                      Helper.getAssetName(
                          "star_filled.png", "virtual"),
                    ),
                    const SizedBox(width: 5,),
                    const Text("4.9", style: TextStyle(color: AppColor.orange),),
                    const SizedBox(width: 5,),
                    const Text("(125 raitings)"),
                    const SizedBox(width: 5,),
                    const Text("Cafe"),
                    const SizedBox(width: 5,),
                    const Padding(
                      padding:  EdgeInsets.only(bottom: 5.0),
                      child: Text(".", style: TextStyle(color: AppColor.orange, fontWeight: FontWeight.w900),),
                    ),

                    const SizedBox(width: 5,),
                    const Text("Western Food"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCart extends StatelessWidget {
  const CategoryCart({
    super.key,
    required this.image,
    required this.name,
  });

  final Image image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: 100,
            height: 100,
            child: image,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: Helper.getTheme(context)
              .titleLarge!
              .copyWith(color: AppColor.primary, fontSize: 18),
        )
      ],
    );
  }
}

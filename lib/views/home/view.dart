import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/widgets/my_text.dart';
import 'package:nectar/widgets/product_card.dart';
import 'package:nectar/widgets/search_field.dart';
import 'package:nectar/widgets/section_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            getAsset('colored-logo'),
            height: 30,
            width: 30,
          ),
          // ExpansionTile
          // Carousel pub dev
          // flutter_rating_bar
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(getAsset('marker')),
                SizedBox(width: 10),
                MyText(
                  data: 'Mansoura, Egypt',
                  color: kDarkGrayColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ],
            ),
          ),
          SearchField(),
          Expanded(
            child: ListView(
              children: [
                SectionHeader(
                  title: 'Exclusive Offer',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ProductCard(
                      title: 'Organic Banana',
                      description: '7Pcs',
                      price: '9.99',
                      image: 'banana',
                    ),
                  ),
                ),
                SectionHeader(
                  title: 'Best Selling',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ProductCard(
                      title: 'Organic Banana',
                      description: '7Pcs',
                      price: '9.99',
                      image: 'banana',
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

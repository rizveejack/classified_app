import 'package:classified_app/pallets.dart';
import 'package:classified_app/widgets/product_card.dart';
import 'package:flutter/material.dart';

class SingleShopScreen extends StatelessWidget {
  const SingleShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _ShopProfileCard(),
            Padding(
              padding: EdgeInsets.all(Pallets.defaultPadding),
              child: ListView.builder(
                itemCount: 12,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  return ProductCard(
                    title:
                        "বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে।",
                    image: "assets/products/product1.jpg",
                    verified: false,
                    location: "কুষ্টিয়া সদর",
                    onTap: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ShopProfileCard extends StatelessWidget {
  const _ShopProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/avater.jpg"),
          radius: 50,
        ),
        Text(
          "মৌমিতা চ্যাটার্জি",
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            fontSize: 18.00,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "রিভিউ :",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 5),
            Text(
              "৫৭০",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(width: 30),
            Text(
              "প্রোডাক্টস :",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 5),
            Text(
              "৭০",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "দোকান নম্বর:",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 5),
            Text(
              "৫৭০",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(width: 30),
            Icon(
              Icons.location_on_rounded,
              color: Colors.blueGrey.shade600,
              size: 16,
              shadows: const [
                Shadow(
                  blurRadius: 4,
                  color: Colors.black26,
                ),
              ],
            ),
            const SizedBox(width: 3),
            Text(
              "ঝিনাইদহ সদর",
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

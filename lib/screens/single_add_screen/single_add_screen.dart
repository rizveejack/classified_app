import 'package:classified_app/pallets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../screens.dart';
import 'product_image_carosel.dart';

class SingleAddScreen extends StatelessWidget {
  const SingleAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(horizontal: Pallets.defaultPadding),
        child: Row(
          children: [
            Row(
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return SingleShopScreen();
                      }),
                    );
                  },
                  icon: Icon(
                    MdiIcons.store,
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Icon(
                    MdiIcons.heart,
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return ReviewListScreen();
                      }),
                    );
                  },
                  icon: Icon(
                    Icons.reviews_rounded,
                  ),
                ),
              ],
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return WriteReviewScreen();
                  }),
                );
              },
              icon: Icon(
                Icons.history_edu_rounded,
                size: 35,
              ),
            ),
            ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                fixedSize: MaterialStateProperty.all<Size>(
                  const Size.fromWidth(115),
                ),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                ),
              ),
              onPressed: () {},
              icon: const Icon(MdiIcons.whatsapp),
              label: const Text(
                "প্লেস অর্ডার",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProductImageCarosel(),
            Padding(
              padding: EdgeInsets.all(Pallets.defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে।",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 18.00,
                      height: 1.5,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.shield_rounded,
                        color: Colors.green.shade600,
                        size: 15,
                        shadows: const [
                          Shadow(
                            blurRadius: 4,
                            color: Colors.black26,
                          ),
                        ],
                      ),
                      const SizedBox(width: 3),
                      Text(
                        "বিশ্বস্ত বিক্রেতা",
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.star,
                        size: 18,
                      ),
                      SizedBox(width: 3),
                      Text(
                        "৪.৫ (৩৪৫)",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.favorite,
                        size: 18,
                        color: Colors.red,
                      ),
                      SizedBox(width: 3),
                      Text(
                        "পছন্দ করেছেন (৩৪৫)",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: const [
                      Text(
                        "মূল্য:",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "৫৭০.০০",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "৳",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Divider(height: 10),
                  SizedBox(height: 10),
                  Text(
                    "প্রোডাক্ট বর্ননা",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 18.00,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "মানুষ আসবার পূর্বেই জীবসৃষ্টিযজ্ঞে প্রকৃতির ভূরিব্যয়ের পালা শেষ হয়ে এসেছে। বিপুল মাংস, কঠিন বর্ম, প্রকাণ্ড লেজ নিয়ে জলে স্থলে পৃথুল দেহের যে অমিতাচার প্রবল হয়ে উঠেছিল তাতে ধরিত্রীকে দিলে ক্লান্ত করে। প্রমাণ হল আতিশয্যের পরাভব অনিবার্য। পরীক্ষায় এটাও স্থির হয়ে গেল যে, প্রশ্রয়ের পরিমাণ যত বেশি হয় দুর্বলতার বোঝাও তত দুর্বহ হয়ে ওঠে। নূতন পর্বে প্রকৃতি যথাসম্ভব মানুষের বরাদ্দ কম করে দিয়ে নিজে রইল নেপথ্যে।",
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 15.00,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "সংশ্লিষ্ট পণ্য",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 18.00,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) {
                                    return SingleAddScreen();
                                  },
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  width: 130,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/products/product2.jpg'),
                                      fit: BoxFit.fitHeight,
                                      opacity: 0.8,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 5,
                                  left: 20,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          Text(
                                            "মূল্য:",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "৫৭০.০০",
                                            style: TextStyle(
                                              fontSize: 21,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "৳",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.location_on_rounded,
                                            color: Colors.white,
                                            size: 16,
                                            shadows: [
                                              Shadow(
                                                blurRadius: 4,
                                                color: Colors.black26,
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 3),
                                          Text(
                                            "চুয়াডাঙ্গা সদর",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Positioned(
                                  top: 5,
                                  left: 10,
                                  child: UserSmallCard(),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserSmallCard extends StatelessWidget {
  const UserSmallCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 15,
          backgroundImage: AssetImage("assets/images/avater.jpg"),
        ),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 10),
            Text(
              "মৌমিতা চ্যাটার্জি",
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                overflow: TextOverflow.ellipsis,
                height: 0.3,
                fontSize: 12,
              ),
            ),
            Text(
              "রিভিউ(1570)",
              maxLines: 1,
              style: TextStyle(
                color: Colors.white,
                overflow: TextOverflow.ellipsis,
                height: 1.4,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

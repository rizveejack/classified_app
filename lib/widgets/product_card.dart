import 'package:flutter/material.dart';

import '../pallets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Pallets.defaultPadding / 2),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              blurRadius: 9,
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 0.1,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/product.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        const Text(
                          "সারা বাংলাদেশের ক্রয়, ভাড়া কিংবা বিক্রি করুন যেকোনো কিছু",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          // ignore: unnecessary_const
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.00,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.shield_rounded,
                              color: Colors.green.shade600,
                              size: 16,
                              shadows: const [
                                Shadow(
                                  blurRadius: 4,
                                  color: Colors.black26,
                                ),
                              ],
                            ),
                            SizedBox(width: 5),
                            const Text(
                              "বিশ্বস্ত বিক্রেতা",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
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
                            SizedBox(width: 5),
                            const Text(
                              "চুয়াডাঙ্গা সদর",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Row(
                        children: [
                          Icon(
                            Icons.access_time_rounded,
                            size: 10,
                          ),
                          SizedBox(width: 4),
                          Text("পোস্ট করা হয়েছে ১৭ জুন",
                              style: TextStyle(
                                fontSize: 12,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

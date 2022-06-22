import 'package:flutter/material.dart';

import '../pallets.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.name,
    required this.image,
    required this.verified,
    required this.location,
    required this.review,
    required this.onTap,
    required this.products,
    required this.shopId,
  }) : super(key: key);

  final String name;
  final String image;
  final bool verified;
  final String location;
  final String review;
  final String products;
  final String shopId;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Pallets.defaultPadding / 2),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 100,
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
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 5,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.shield_rounded,
                          color: verified
                              ? Colors.green.shade600
                              : Colors.grey.shade600,
                          size: 16,
                          shadows: const [
                            Shadow(
                              blurRadius: 4,
                              color: Colors.black26,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            name,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            // ignore: unnecessary_const
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                              fontSize: 18.00,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
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
                            review,
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
                            products,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
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
                            shopId,
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
                            location,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../pallets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.title,
    required this.image,
    required this.verified,
    required this.location,
    required this.date,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String image;
  final bool verified;
  final String location;
  final String date;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Pallets.defaultPadding / 2),
      child: GestureDetector(
        onTap: onTap,
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
                    image: DecorationImage(
                      image: AssetImage(image),
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
                          Text(
                            title,
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
                              const SizedBox(width: 5),
                              Text(
                                verified
                                    ? "বিশ্বস্ত বিক্রেতা"
                                    : "সাধারণ বিক্রেতা",
                                style: const TextStyle(
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
                              const SizedBox(width: 5),
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
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.access_time_rounded,
                              size: 10,
                            ),
                            const SizedBox(width: 4),
                            Text("পোস্ট করা হয়েছে $date",
                                style: const TextStyle(
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
      ),
    );
  }
}

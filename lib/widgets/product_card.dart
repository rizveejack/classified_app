import 'package:flutter/material.dart';

import '../pallets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.title,
    required this.image,
    required this.verified,
    required this.location,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String image;
  final bool verified;
  final String location;

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
                              color: Colors.black87,
                              fontSize: 15.00,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: const [
                              Text(
                                "মূল্য:",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "৫৭০.০০",
                                style: TextStyle(
                                  fontSize: 21,
                                ),
                              ),
                              Text(
                                "৳",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Row(
                          children: [
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
                                const SizedBox(width: 3),
                                Text(
                                  verified ? "বিশ্বস্ত" : "সাধারণ",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 6),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

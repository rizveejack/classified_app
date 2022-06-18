import 'package:flutter/material.dart';

import '../../pallets.dart';
import '../../widgets/widgets.dart';

class TrandScreen extends StatelessWidget {
  const TrandScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Pallets.defaultPadding),
          child: Column(
            children: [
              const ScreenHeading(
                title: "ট্রেন্ডিং প্রোডাক্টস",
                icon: Icons.local_fire_department_rounded,
                iconColor: Colors.redAccent,
              ),
              const SizedBox(height: 20),
              ListView.builder(
                itemCount: 20,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  return const ProductCard(
                    title: "বহুকাল হইলো আমি একবার পালামৌ প্রদেশে গিয়াছিলাম",
                    image: "assets/products/product2.jpg",
                    verified: false,
                    location: "ঝিনাইদহ সদর",
                    date: "১৯ জুন",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

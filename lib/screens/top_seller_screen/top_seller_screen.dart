import 'package:classified_app/pallets.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';
import '../screens.dart';

class TopSellerScreen extends StatelessWidget {
  const TopSellerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          toolbarHeight: Pallets.toolbarHeight,
          title: const ScreenHeading(
            title: "সেরা ১০ বিক্রেতা",
            icon: Icons.campaign_rounded,
            iconColor: Colors.purple,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.filter_list_rounded),
            ),
          ],
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: Pallets.defaultPadding),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 10,
              (_, index) {
                return ProfileCard(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return const SingleShopScreen();
                      }),
                    );
                  },
                  name: "মৌমিতা চ্যাটার্জি",
                  image: "assets/images/avater.jpg",
                  verified: true,
                  location: "ঝিনাইদহ সদর",
                  review: "২৫৭০",
                  products: "৫৭০",
                  shopId: "৭০",
                );
              },
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 100,
          ),
        ),
      ],
    );
  }
}

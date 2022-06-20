import 'package:classified_app/pallets.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class DashBordScreen extends StatelessWidget {
  const DashBordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const CustomDrawer(),
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              floating: true,
              title: ScreenHeading(
                title: "সকল বিজ্ঞাপন",
                icon: Icons.campaign_rounded,
                iconColor: Colors.blueGrey,
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: Pallets.defaultPadding),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 12,
                  (_, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে।",
                                    maxLines: 2,
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      height: 1.2,
                                    ),
                                  ),
                                  Text("20/12/1991"),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.edit_rounded,
                                      color: Colors.blueGrey,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 9,
                                          color: Colors.black26,
                                        ),
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.delete_rounded,
                                      color: Colors.redAccent,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 9,
                                          color: Colors.black26,
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
        ));
  }
}

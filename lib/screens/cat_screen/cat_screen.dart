import 'package:classified_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../pallets.dart';
import '../../widgets/widgets.dart';
import '../screens.dart';

class CatScreen extends StatefulWidget {
  const CatScreen({Key? key}) : super(key: key);

  @override
  State<CatScreen> createState() => _CatScreenState();
}

class _CatScreenState extends State<CatScreen> {
  List<PostModel> _allCatproducts = [];

  Future<void> _fetchCategory() async {
    final responce = await rootBundle.loadString("assets/json/all_post.json");
    final postModel = postModelFromJson(responce);
    setState(() {
      _allCatproducts = postModel;
    });
  }

  @override
  void initState() {
    _fetchCategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: Pallets.toolbarHeight,
            centerTitle: false,
            title: const ScreenHeading(
              title: "সকল প্রোডাক্টস",
              icon: Icons.local_fire_department_rounded,
              iconColor: Colors.redAccent,
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
                childCount: _allCatproducts.length,
                (_, index) {
                  return ProductCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) {
                          return const SingleAddScreen();
                        }),
                      );
                    },
                    title: _allCatproducts[index].title,
                    image: _allCatproducts[index].image,
                    verified: _allCatproducts[index].verified,
                    location: _allCatproducts[index].location,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

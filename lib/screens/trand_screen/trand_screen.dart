import 'package:classified_app/pallets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/models.dart';
import '../../widgets/widgets.dart';
import '../screens.dart';

class TrandScreen extends StatefulWidget {
  const TrandScreen({Key? key}) : super(key: key);

  @override
  State<TrandScreen> createState() => _TrandScreenState();
}

class _TrandScreenState extends State<TrandScreen> {
  List<PostModel> _postData = [];

  Future _fetchData() async {
    final String res = await rootBundle.loadString('assets/json/all_post.json');
    final postModel = postModelFromJson(res);
    setState(() {
      _postData = postModel;
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          toolbarHeight: Pallets.toolbarHeight,
          title: const ScreenHeading(
            title: "ট্রেন্ডিং প্রোডাক্টস",
            icon: Icons.local_fire_department_rounded,
            iconColor: Colors.redAccent,
          ),
          actions: [
            IconButton(
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      color: Colors.amber,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            const Text('Modal BottomSheet'),
                            ElevatedButton(
                              child: const Text('Close BottomSheet'),
                              onPressed: () => Navigator.pop(context),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.filter_list_rounded),
            ),
          ],
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: Pallets.defaultPadding),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(childCount: _postData.length,
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
                title: _postData[index].title,
                image: _postData[index].image,
                verified: _postData[index].verified,
                location: _postData[index].location,
              );
            }),
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

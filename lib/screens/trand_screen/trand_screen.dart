import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/models.dart';
import '../../pallets.dart';
import '../../widgets/widgets.dart';

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
                itemCount: _postData.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  return ProductCard(
                    title: _postData[index].title,
                    image: _postData[index].image,
                    verified: _postData[index].verified,
                    location: _postData[index].location,
                    date: _postData[index].date ?? "",
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

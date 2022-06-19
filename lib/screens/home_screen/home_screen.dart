import 'package:classified_app/models/models.dart';
import 'package:classified_app/pallets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/screens/screens.dart';
import '../../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> _listCategory = [];

  Future<void> _fetchCategory() async {
    final resquest = await rootBundle.loadString("assets/json/category.json");
    final categoryModel = categoryModelFromJson(resquest);
    setState(() {
      _listCategory = categoryModel;
    });
  }

  @override
  void initState() {
    _fetchCategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30),
            width: double.maxFinite,
            height: 200,
            decoration: BoxDecoration(
              gradient: Pallets.homepageGradient,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "সিডি বাজার",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily:
                        Theme.of(context).textTheme.headline5?.fontFamily,
                    fontSize: 55.00,
                    height: 0.6,
                  ),
                ),
                const Text(
                  "কেনা বেচার বিশ্বস্ত মাধ্যম",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: double.maxFinite,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(
                            hintText: "অনুসন্ধান...",
                            hintStyle: TextStyle(
                              color: Colors.grey.withOpacity(0.8),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey.withOpacity(0.6),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Column(
            children: [
              Text(
                "জনপ্রিয় ক্যাটেগরি",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.headline5?.fontFamily,
                  fontSize: 25.00,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Pallets.defaultPadding),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: size.width / size.height,
                  ),
                  itemCount: _listCategory.length,
                  itemBuilder: (_, index) {
                    return CategoryCard(
                      image: _listCategory[index].image,
                      title: _listCategory[index].title,
                    );
                  },
                ),
              ),
              const SizedBox(height: 40),
              Text(
                "প্রয়োজনীয় লিংক",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.headline5?.fontFamily,
                  fontSize: 25.00,
                ),
              ),
              SizedBox(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return const SupportScreen();
                          }),
                        );
                      },
                      child: const Text("যোগাযোগ"),
                    ),
                    const VerticalDivider(width: 2),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return const BuyerGuidScreen();
                          }),
                        );
                      },
                      child: const Text("নিরাপদ থাকুন"),
                    ),
                    const VerticalDivider(width: 2),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return const PolicyScreen();
                          }),
                        );
                      },
                      child: const Text("আমাদের পলিসি"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

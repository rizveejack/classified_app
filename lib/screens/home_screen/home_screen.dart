import 'package:classified_app/pallets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30),
            width: double.maxFinite,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue.shade500,
                  Colors.blue.shade800,
                  Colors.blue.shade400,
                ],
              ),
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
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 3 / 5,
                  ),
                  itemCount: 12,
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.grey.withOpacity(0.2),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/icons/bike.png"),
                          ),
                        ),
                        const Text(
                          "সিডি বাজার",
                          style: TextStyle(
                            fontSize: 13.00,
                            height: 0.1,
                          ),
                        ),
                      ],
                    );
                  },
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

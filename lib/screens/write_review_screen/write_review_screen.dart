import 'package:classified_app/pallets.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class WriteReviewScreen extends StatelessWidget {
  const WriteReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(Pallets.defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "আপনার রিভিউ লিখুন",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 10),
              RatingStar(),
              Container(
                padding: EdgeInsets.all(Pallets.defaultPadding),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  maxLines: 5, //or null
                  decoration: InputDecoration.collapsed(
                      hintText: "এখান থেকে শুরু করুন"),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  fixedSize: MaterialStateProperty.all<Size>(
                    const Size.fromWidth(double.maxFinite),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.all(10),
                  ),
                ),
                onPressed: () {},
                icon: const Icon(Icons.reviews_rounded),
                label: const Text(
                  "সাবমিট রিভিউ",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

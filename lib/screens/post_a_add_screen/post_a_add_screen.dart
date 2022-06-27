import 'package:classified_app/pallets.dart';
import 'package:flutter/material.dart';

class PostAdsScreen extends StatelessWidget {
  const PostAdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Pallets.defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Text("প্রোডাক্ট টাইটেল "),
              Container(
                padding: EdgeInsets.all(Pallets.defaultPadding),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration:
                      InputDecoration.collapsed(hintText: "প্রোডাক্ট টাইটেল"),
                ),
              ),
              SizedBox(height: 20),
              Text("প্রোডাক্ট বর্ণনা"),
              Container(
                padding: EdgeInsets.all(Pallets.defaultPadding),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration.collapsed(
                      hintText: "প্রোডাক্ট সম্পর্কে লিখুন"),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("বর্তমান মূল্য"),
                      Container(
                        width: (size.width / 2) - 15,
                        padding: EdgeInsets.all(Pallets.defaultPadding),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration:
                              InputDecoration.collapsed(hintText: "500 "),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("পূর্বের মূল্য"),
                      Container(
                        width: (size.width / 2) - 15,
                        padding: EdgeInsets.all(Pallets.defaultPadding),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration:
                              InputDecoration.collapsed(hintText: "1500"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
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
                icon: const Icon(Icons.wc_rounded),
                label: const Text(
                  "পণ্য তৈরি করুন",
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

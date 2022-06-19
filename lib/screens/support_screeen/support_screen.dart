import 'package:classified_app/pallets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Pallets.defaultPadding),
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                  child: SvgPicture.asset(
                    "assets/images/messages.svg",
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const SizedBox(height: 30),
                Column(
                  children: [
                    Text(
                      "যোগাযোগ করুন",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const Text(
                      "আপনার প্রশ্নের উত্তর ইতোমধ্যে দেওয়া আছে কিনা তা দেখতে আমাদের প্রশ্ন-উত্তর এবং নিরাপদ থাকুন নির্দেশনাবলী দেখুন। যদি না হয়, অনুগ্রহ করে আমাদের সাথে যোগাযোগ করুন এবং আমরা যত তাড়াতাড়ি সম্ভব আপনার সাথে যোগাযোগ করব।",
                    ),
                    const SizedBox(height: 40),
                    Text(
                      "আপনি আমাদের কল বা ইমেইল ও করতে পারেন।",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const Text(
                        "প্রতিদিন সকাল ১০ঃ০০ থেকে সন্ধ্যা ০৬ঃ০০ পর্যন্ত।"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.phone_android_rounded,
                                    size: 16.00,
                                  ),
                                  SizedBox(width: 5),
                                  Text("কল করুন"),
                                ],
                              ),
                              const Text("09609 555444"),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.email_rounded,
                                    size: 16.0,
                                  ),
                                  SizedBox(width: 5),
                                  Text("ইমেইল করুন"),
                                ],
                              ),
                              const Text("info@balsal.com"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

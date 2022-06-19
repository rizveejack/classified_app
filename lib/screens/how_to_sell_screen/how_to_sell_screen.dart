import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../pallets.dart';

class HowToSellScreen extends StatelessWidget {
  const HowToSellScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Pallets.defaultPadding),
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                  child: SvgPicture.asset(
                    "assets/images/gooditem.svg",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "কিভাবে দ্রুত বিক্রি করবেন?",
                  style: Theme.of(context).textTheme.headline4,
                ),
                const Text(
                  "বেশি সংখ্যক ক্রেতা আকৃষ্ট করতে কিভাবে অ্যাড পোস্ট করবেন তার কিছু টিপস নিচে দেয়া হল।",
                ),
                const SizedBox(
                  height: 40,
                ),
                const _SequrityHeadinge(
                  title: "যত বেশি সম্ভব বিস্তারিত লিখুন",
                  icon: Icons.sticky_note_2_rounded,
                  color: Colors.purple,
                ),
                const _SequrityCard(
                  body:
                      "অ্যাড এর প্রাসঙ্গিক বিবরণ বেশি ভিউ বাড়ায়। ক্রেতাগন আগ্রহী হয় এমন সব শব্দ এবং তথ্য উল্লেখ করুন। বাড়িয়ে না বলে বাস্তসম্মত তথ্য দিন।",
                ),
                const SizedBox(
                  height: 20,
                ),
                const _SequrityHeadinge(
                  title: "ভালো ছবি আপলোড করুন",
                  icon: Icons.collections_rounded,
                  color: Colors.green,
                ),
                const _SequrityCard(
                  body:
                      "যে পণ্য বিক্রি করবেন সেটির স্পষ্ট ছবি দিন। ডাউনলোড করা ছবির চেয়ে সত্যিকারের ছবি ১০ গুন বেশি ভিউ বাড়ায়। পর্যাপ্ত আলো নিশ্চিত করুন এবং বিভিন্ন দিক থেকে ছবি তুলুন।",
                ),
                const SizedBox(
                  height: 20,
                ),
                const _SequrityHeadinge(
                  title: "সঠিক দাম দিন",
                  icon: Icons.monetization_on,
                  color: Colors.orange,
                ),
                const _SequrityCard(
                  body:
                      "দাম ঠিক থাকলে সব কিছুই বিক্রি হয়! Bikroy এর বিজ্ঞাপনগুলো দেখে প্রতিযোগিতামূলক একটি দাম নির্ধারণ করুন। স্বাভাবিকভাবেই কম দামের প্রতি বেশি আগ্রহ থাকে। আপনি যদি দামাদামী করার সুযোগ দিতে চান, তাহলে অ্যাড পোস্ট করার সময় আলোচনা সাপেক্ষে অপশনটি নির্বাচন করুন।",
                ),
                const SizedBox(
                  height: 20,
                ),
                const _SequrityHeadinge(
                  title: "অ্যাড প্রমোশন ব্যবহার করুন!",
                  icon: Icons.price_check,
                  color: Colors.black,
                ),
                const _SequrityCard(
                  body:
                      "আপনি একটি ভালো মানের অ্যাড পোস্ট করেছেন, এখন সময় দেখানোর! অ্যাড প্রমোশন ব্যবহার করে ১০ গুন বেশি ভিউ এবং বেশি আগ্রহী ক্রেতা আকৃষ্ট করুন। যত বেশি আগ্রহী ক্রেতা ভালো দামে বিক্রি করার সম্ভাবনা তত বেশি।",
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// _SequrityHeadinge With i con
class _SequrityHeadinge extends StatelessWidget {
  const _SequrityHeadinge({
    Key? key,
    required this.title,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            icon,
            size: 50.00,
            color: color,
            shadows: const [
              Shadow(
                blurRadius: 9,
                color: Colors.black38,
              ),
            ],
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
        ],
      ),
    );
  }
}

// Sequrity card

class _SequrityCard extends StatelessWidget {
  const _SequrityCard({Key? key, required this.body}) : super(key: key);

  final String body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(body),
        ],
      ),
    );
  }
}

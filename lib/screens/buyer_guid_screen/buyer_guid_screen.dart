import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuyerGuidScreen extends StatelessWidget {
  const BuyerGuidScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: SvgPicture.asset(
                  "assets/images/sequrity.svg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Bikroy-এ নিরাপদ থাকুন",
                style: Theme.of(context).textTheme.headline4,
              ),
              const Text(
                "Bikroy এ, আমাদের প্ল্যাটফর্মে যতটা সম্ভব আপনার নিরাপদ অভিজ্ঞতা নিশ্চিত করার জন্য আমরা ১০০% প্রতিশ্রুতিবদ্ধ।Bikroy এ কেনাবেচা করার সময় কীভাবে নিরাপদ থাকা যায় সে সংক্রান্ত কিছু পরামর্শ এখানে দেওয়া হলো।",
              ),
              const SizedBox(
                height: 20,
                child: Divider(),
              ),
              const _SequrityHeadinge(
                title: "সাধারণ নিরাপত্তামূলক পরামর্শ",
                icon: Icons.lock,
              ),
              const _SequrityCard(
                title: "স্থানীয় পণ্য রাখুন",
                body:
                    "বিক্রেতার সাথে সরাসরি দেখা করুন এবং পেমেন্ট করার আগে আইটেমটি চেক করুন। যেখানে প্রযোজ্য, ডোরস্টেপ ডেলিভারি ব্যবহার করুন এবং ১০০% ক্রেতা সুরক্ষার সাথে আপনার আইটেমটি বুঝে নিন।",
              ),
              const _SequrityCard(
                title: "চাকরির জন্য আবেদন করার সময়",
                body:
                    "আবেদন করার আগে চাকরি এবং নিয়োগকর্তা সম্পর্কে জেনে নিন। ব্যক্তিগতভাবে নিয়োগকর্তার সাথে দেখা করার আগে ব্যক্তিগত তথ্য দেবেন না। ইন্টারভিউয়ের জন্য দূরবর্তী স্থানে যাওয়া থেকে বিরত থাকুন।",
              ),
              const _SequrityCard(
                title: "পণ্য হাতে পেয়ে পেমেন্ট করুন",
                body:
                    "ক্রেতাগণঃ কোনো আইটেম পাওয়ার আগে পেমেন্ট করবেন না। বিক্রেতাগণঃ পেমেন্ট পাওয়ার আগে কোনো আইটেম পাঠাবেন না।",
              ),
              const _SequrityCard(
                title: "ভেবেচিন্তে সিদ্ধান্ত নিন",
                body:
                    "স্বাভাবিকের চেয়ে অতিরিক্ত ভালো এমন কিছু এড়িয়ে চলুন, যেমন অবাস্তবভাবে কম দাম এবং দ্রুত অর্থের প্রতিশ্রুতি।",
              ),
              const _SequrityCard(
                title: "কখনোই আর্থিক তথ্য দেবেন না",
                body:
                    "এর মধ্যে রয়েছে ব্যাংক অ্যাকাউন্টের বিবরণ, পেপ্যাল ​​তথ্য এবং অন্য কোনো তথ্য যার অপব্যবহার হতে পারে।",
              ),
              _SequrityHeadinge(
                title: "স্ক্যাম ও প্রতারণা থেকে সতর্ক থাকতে হবে",
                icon: Icons.warning,
              ),
              const _SequrityCard(
                title: "জাল পেমেন্ট সার্ভিসসমূহ",
                body:
                    "Bikroy কোনো ধরনের পেমেন্ট স্কিম বা সুরক্ষা প্রদান করে না। এই ধরনের সার্ভিস অফার করার দাবি করে এমন যেকোনো ইমেইল রিপোর্ট করুন। অনলাইন পেমেন্ট সার্ভিস বা এসক্রো সাইটের ব্যবহার পরিহার করুন যদি না আপনি তার সত্যতা সম্পর্কে ১০০% নিশ্চিত হন।",
              ),
              const _SequrityCard(
                title: "জাল তথ্যের অনুরোধ",
                body:
                    "Bikroy কখনোই আপনার ব্যক্তিগত তথ্যের জন্য অনুরোধ করে ইমেইল পাঠায় না। আপনি যদি আমাদের কাছে আপনার ব্যক্তিগত তথ্য প্রদান করার জন্য ইমেইল পান, তাহলে কোন লিংক খুলবেন না। অনুগ্রহ করে ইমেইলটি রিপোর্ট করুন এবং এটি ডিলিট করে দিন।",
              ),
              const _SequrityCard(
                title: "জাল ফি এর জন্য অনুরোধ",
                body:
                    "আইটেম বা সার্ভিস ক্রয় বা বিক্রয়ের জন্য অতিরিক্ত ফি চাইবে এমন কাউকে এড়িয়ে চলুন। Bikroy কখনই তার মৌলিক সার্ভিসের জন্য অর্থ প্রদানের অনুরোধ করে না, এবং বাংলাদেশ এ অবস্থিত নয় এমন আইটেমগুলোকে অনুমতি দেয় না, তাই আমদানি করার জন্য দালালি ফি এর কখনোই প্রয়োজন হবে না।",
              ),
              const _SequrityCard(
                title:
                    "ওয়েস্টার্ন ইউনিয়ন বা মানিগ্রামের মতো মানি ট্রান্সফার সার্ভিস ব্যবহারের অনুরোধ",
                body:
                    "এই সার্ভিসগুলো অপরিচিতদের মধ্যে লেনদেনের জন্য নয় এবং তাদের মাধ্যমে অনেক স্প্যাম চালানো হয়। এই সার্ভিসগুলো ব্যবহারের অনুরোধ এড়িয়ে চলুন।",
              ),
              const _SequrityHeadinge(
                title: "Bikroy দ্বারা প্রদত্ত নিরাপত্তা ব্যবস্থা",
                icon: Icons.warning_amber_rounded,
              ),
              const _SequrityCard(
                title: "আপনার বিজ্ঞাপনে ইমেইল অ্যাড্রেস দেখা যায় না",
                body: "এটি নিশ্চিত করে যে আপনি স্প্যাম থেকে সুরক্ষিত।",
              ),
              const _SequrityCard(
                title: "বিজ্ঞাপনে আপনার ফোন নাম্বার লুকিয়ে রাখার ব্যবস্থা",
                body:
                    "আপনি আপনার ফোন নাম্বার লুকিয়ে রাখতে পারেন এবং তারপরেও আগ্রহী ক্রেতারা আপনার সাথে চ্যাটের মাধ্যমে যোগাযোগ করতে পারবেন।",
              ),
              const _SequrityCard(
                title: "ক্রমাগত উন্নতি",
                body:
                    "সন্দেহজনক বা অসংলগ্ন কার্যকলাপ সনাক্ত এবং প্রতিরোধ করার জন্য আমরা আমাদের প্রযুক্তি ক্রমাগত আপডেট করি।",
              ),
              const _SequrityCard(
                title: "অপরাধীদের ব্লক করে রাখা হয়",
                body:
                    "আমরা সন্দেহজনক বা অবৈধ কার্যকলাপের রিপোর্ট ট্র্যাক করি যাতে অপরাধীরা আবার সাইট ব্যবহার করতে না পারে।",
              ),
              const _SequrityHeadinge(
                title: "একটি নিরাপত্তা সমস্যা রিপোর্ট করা",
                icon: Icons.warning_amber_rounded,
              ),
              const _SequrityCard(
                title: "স্ক্যামের শিকার?",
                body:
                    "যদি আপনি মনে করেন যে আপনি একটি স্ক্যামের শিকার হয়েছেন, তাহলে অনুগ্রহ করে আপনার পরিস্থিতি সম্পর্কে আমাদের অবিলম্বে জানান। যদি আপনি প্রতারিত হয়ে থাকেন, আমরা আপনাকে আপনার স্থানীয় পুলিশ বিভাগের সাথে যোগাযোগ করার পরামর্শ দিই।",
              ),
              const _SequrityCard(
                title: "তথ্য শেয়ারিং",
                body:
                    "Bikroy ব্যবহারকারীদের গোপনীয়তার জন্য প্রতিশ্রুতিবদ্ধ এবং ব্যবহারকারীর তথ্য প্রকাশ্যে শেয়ার করে না। নিরাপত্তার বিষয়কে আমরা সর্বোচ্চ গুরুত্ব দিয়ে থাকি এবং স্ক্যাম বা অন্যান্য অপরাধমূলক কার্যকলাপের ব্যাপারে অনুরোধ পেলে আমরা আইন প্রয়োগকারীদের যথাসাধ্য সহযোগিতা করবো।",
              ),
            ],
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
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            icon,
            size: 50.00,
            color: Colors.amber,
            shadows: const [
              Shadow(
                blurRadius: 0.9,
                color: Colors.black45,
                // ignore: unnecessary_const
                offset: Offset(0.1, 0.1),
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
  const _SequrityCard({Key? key, required this.title, required this.body})
      : super(key: key);

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(body),
        ],
      ),
    );
  }
}

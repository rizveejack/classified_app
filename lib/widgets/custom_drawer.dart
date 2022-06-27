import 'package:flutter/material.dart';

import '../screens/screens.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.black87),
            accountName: Text("মৌমিতা চ্যাটার্জি"),
            accountEmail: Row(
              children: [
                Text(
                  "দোকান নং",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Text("৫৭০"),
              ],
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/avater.jpg"),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return const ProfileScreen();
                }),
              );
            },
            dense: true,
            title: const Text("প্রোফাইল"),
            subtitle: const Text("প্রোফাইল এডিট করুন"),
            leading: const Icon(
              Icons.person_rounded,
              size: 30,
              color: Colors.purple,
              shadows: [
                Shadow(
                  blurRadius: 9,
                  color: Colors.black26,
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return const CreateShopScreen();
                }),
              );
            },
            dense: true,
            title: const Text("দোকান"),
            subtitle: const Text("দোকান তৈরী অথবা তথ্য পরিবর্তন"),
            leading: const Icon(
              Icons.storefront_rounded,
              size: 34,
              color: Colors.amber,
              shadows: [
                Shadow(
                  blurRadius: 9,
                  color: Colors.black26,
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return const BuyerGuidScreen();
                }),
              );
            },
            dense: true,
            title: const Text("নিরাপদ থাকুন"),
            subtitle: const Text("নিরাপদ থাকার নির্দেশনা"),
            leading: const Icon(
              Icons.shield,
              size: 34,
              color: Colors.green,
              shadows: [
                Shadow(
                  blurRadius: 9,
                  color: Colors.black26,
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return const HowToSellScreen();
                }),
              );
            },
            dense: true,
            title: const Text("বিক্রয় টিপস"),
            subtitle: const Text("কিভাবে দ্রুত বিক্রি করবেন?"),
            leading: const Icon(
              Icons.assignment_rounded,
              size: 34,
              color: Colors.blue,
              shadows: [
                Shadow(
                  blurRadius: 9,
                  color: Colors.black26,
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return const AuthScreen();
                }),
              );
            },
            dense: true,
            title: const Text("লগ আউট"),
            subtitle: const Text("লগ আউট করতে চান?"),
            leading: const Icon(
              Icons.logout_rounded,
              size: 34,
              color: Colors.redAccent,
              shadows: [
                Shadow(
                  blurRadius: 9,
                  color: Colors.black26,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

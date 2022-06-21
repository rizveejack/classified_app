import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
                Icon(
                  MdiIcons.whatsapp,
                  color: Colors.green,
                  size: 15,
                ),
                SizedBox(width: 5),
                Text("+8801717656078"),
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
                  return const SupportScreen();
                }),
              );
            },
            dense: true,
            title: const Text("যোগাযোগ"),
            subtitle: const Text("আমাদের সাথে যোগাযোগ করুন"),
            leading: const Icon(
              Icons.headphones_rounded,
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
                  return const PolicyScreen();
                }),
              );
            },
            dense: true,
            title: const Text("পলিসি"),
            subtitle: const Text("আমাদের আপস পলিসি"),
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

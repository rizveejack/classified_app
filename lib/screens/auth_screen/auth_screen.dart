import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../widgets/widgets.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            child: SvgPicture.asset(
              "assets/images/welcome.svg",
              fit: BoxFit.fitHeight,
            ),
          ),
          const SizedBox(height: 20),
          CustomIconButton(
            label: "ফেসবুক",
            color: Colors.blue.shade800,
            onTap: () {},
            icon: Icons.facebook_rounded,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomIconButton(
            label: "গুগল",
            color: Colors.red.shade800,
            onTap: () {},
            icon: MdiIcons.google,
          ),
        ],
      ),
    );
  }
}

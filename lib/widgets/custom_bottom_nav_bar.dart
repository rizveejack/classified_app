import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTab,
  }) : super(key: key);

  final int currentIndex;
  final Function onTab;

  void changeIndex(int index) {
    onTab(index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 5,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              iconSize: 28,
              icon: Icon(
                Icons.widgets_rounded,
                color: currentIndex == 0 ? Colors.orange : Colors.black54,
                shadows: const [
                  Shadow(
                    blurRadius: 9,
                    color: Colors.black26,
                  ),
                ],
              ),
              onPressed: () {
                changeIndex(0);
              },
            ),
            IconButton(
              iconSize: 28,
              icon: Icon(
                Icons.local_fire_department_rounded,
                color: currentIndex == 1 ? Colors.redAccent : Colors.black54,
                shadows: const [
                  Shadow(
                    blurRadius: 9,
                    color: Colors.black26,
                  ),
                ],
              ),
              onPressed: () {
                changeIndex(1);
              },
            ),
            SizedBox(width: 25),
            IconButton(
              iconSize: 28,
              icon: Icon(
                Icons.shield_rounded,
                color: currentIndex == 2 ? Colors.green : Colors.black54,
                shadows: const [
                  Shadow(
                    blurRadius: 9,
                    color: Colors.black26,
                  ),
                ],
              ),
              onPressed: () {
                changeIndex(2);
              },
            ),
            IconButton(
              iconSize: 28,
              icon: Icon(
                Icons.headset_mic_rounded,
                color: currentIndex == 3 ? Colors.blueGrey : Colors.black54,
                shadows: const [
                  Shadow(
                    blurRadius: 9,
                    color: Colors.black26,
                  ),
                ],
              ),
              onPressed: () {
                changeIndex(3);
              },
            )
          ],
        ),
      ),
    );
  }
}

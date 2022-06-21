import 'package:classified_app/pallets.dart';
import 'package:flutter/material.dart';

class FetcheredProduct extends StatefulWidget {
  const FetcheredProduct({Key? key}) : super(key: key);

  @override
  State<FetcheredProduct> createState() => _FetcheredProductState();
}

class _FetcheredProductState extends State<FetcheredProduct>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tapbarControlear = TabController(length: 3, vsync: this);
    return Column(
      children: [
        TabBar(
          controller: tapbarControlear,
          isScrollable: false,
          labelStyle: const TextStyle(color: Colors.black),
          labelColor: Colors.black,
          indicator: _CustomDecoretion(),
          padding: EdgeInsets.symmetric(vertical: Pallets.defaultPadding),
          tabs: const [
            Text("পোষাক"),
            Text("রান্নাঘর"),
            Text("প্রসাধনী"),
          ],
        ),
        SizedBox(
          height: 200,
          child: TabBarView(
            controller: tapbarControlear,
            children: [
              const FavoriteProductList(),
              const FavoriteProductList(),
              const FavoriteProductList(),
            ],
          ),
        ),
      ],
    );
  }
}

class _CustomDecoretion extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _PaintMybox();
  }
}

class _PaintMybox extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint paint = Paint();
    paint.color = Colors.purple;
    final Offset myoffset = Offset(
      configuration.size!.width / 2 - 3,
      configuration.size!.height - 3,
    );
    canvas.drawCircle(offset + myoffset, 3, paint);
  }
}

class FavoriteProductList extends StatelessWidget {
  const FavoriteProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (_, index) {
          return Stack(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 130,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/products/product2.jpg'),
                    fit: BoxFit.fitHeight,
                    opacity: 0.8,
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "মূল্য:",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "৫৭০.০০",
                          style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "৳",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          color: Colors.white,
                          size: 16,
                          shadows: const [
                            Shadow(
                              blurRadius: 4,
                              color: Colors.black26,
                            ),
                          ],
                        ),
                        const SizedBox(width: 3),
                        Text(
                          "চুয়াডাঙ্গা সদর",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}

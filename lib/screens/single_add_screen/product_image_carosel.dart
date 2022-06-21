import 'package:flutter/material.dart';

class ProductImageCarosel extends StatefulWidget {
  const ProductImageCarosel({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductImageCarosel> createState() => _ProductImageCaroselState();
}

class _ProductImageCaroselState extends State<ProductImageCarosel> {
  final List<String> _imageList = [
    "assets/products/product.jpg",
    "assets/products/product1.jpg",
    "assets/products/product2.jpg",
    "assets/products/product3.jpg",
    "assets/products/product4.jpg",
    "assets/products/product5.jpg",
    "assets/products/product6.jpg",
    "assets/products/product7.jpg",
    "assets/products/product8.jpg",
    "assets/products/product9.jpg",
    "assets/products/product10.jpg",
  ];
  int _pageIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          PageView.builder(
              itemCount: _imageList.length,
              scrollDirection: Axis.horizontal,
              onPageChanged: _onPageChanged,
              itemBuilder: (_, index) {
                return Image.asset(
                  _imageList[index],
                  fit: BoxFit.cover,
                );
              }),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_imageList.length, (dotindex) {
                return Container(
                  width: _pageIndex == dotindex ? 20 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: _pageIndex == dotindex ? Colors.white : Colors.black,
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 2.0,
                    vertical: 10.0,
                  ),
                );
              }),
            ),
          ),
          Positioned(
            left: 0,
            top: 20,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_rounded),
            ),
          )
        ],
      ),
    );
  }
}

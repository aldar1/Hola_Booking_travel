import 'package:flutter/material.dart';
class UserImage extends StatelessWidget {
  const UserImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: const Image(
        width: 55,
        height: 55,
        fit: BoxFit.fill,
        image: NetworkImage('https://cdn.shopify.com/s/files/1/0714/1079/products/merrell-twins-merch-merrell-twins-gamer-girl-yellow-shirt-shirt-28291175612525_1000x1000.jpg?v=1627999468')
      ),
    );
  }
}

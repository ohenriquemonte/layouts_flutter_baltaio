// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: productList(context),
            ),
          ),
          Container(
            color: Colors.black12,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Total'),
                      SizedBox(height: 5),
                      Text(
                        '\$4250',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  margin: const EdgeInsets.only(right: 20),
                  child: FlatButton(
                    onPressed: () {},
                    child: const Text(
                      'Checkout',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget productList(context) {
    return ListView(
      children: [
        productItem(context, 'BeoPlay Speaker', '755', 'assets/product-1.png'),
        productItem(
            context, 'Leather Wristwatch', '450', 'assets/product-2.png'),
        productItem(
            context, 'Smart Bluetooth Speaker', '900', 'assets/product-3.png'),
        productItem(context, 'Smart Luggage', '100', 'assets/product-4.png'),
        productItem(context, 'Smartphone Case', '99', 'assets/product-5.png'),
        productItem(context, 'Speakers Stand', '49', 'assets/product-6.png'),
        productItem(context, 'AirPods', '199', 'assets/product-7.png'),
      ],
    );
  }

  Widget productItem(
      BuildContext context, String title, String price, String image) {
    return Container(
      height: 120,
      margin: const EdgeInsets.all(5),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(
                  '\$$price',
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 120,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: FlatButton(
                          child: const Text('-'),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: const Text('1'),
                      ),
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: FlatButton(
                          child: const Text('+'),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

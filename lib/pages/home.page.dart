// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:layouts_flutter/pages/product.page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFF5F5F5),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 60),
            search(),
            const SizedBox(height: 30),
            const Text(
              'Categories',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 90,
              child: categoryList(),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Best Selling',
                  style: TextStyle(fontSize: 30),
                ),
                FlatButton(
                  child: const Text('See All'),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 350,
              child: productList(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget search() {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: const BorderRadius.all(
          Radius.circular(128),
        ),
      ),
      child: Row(
        children: [
          const Icon(Icons.search),
          Container(
            width: 300,
            padding: const EdgeInsets.only(left: 10),
            child: TextFormField(
              //   autofocus: true,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Search',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }

  Widget categoryList() {
    return SizedBox(
      //   width: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          categoryItem(),
          categoryItem(),
          categoryItem(),
          categoryItem(),
          categoryItem(),
          categoryItem(),
        ],
      ),
    );
  }

  Widget categoryItem() {
    return Container(
      width: 70,
      height: 70,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(64),
        ),
      ),
      child: Image.asset('assets/Icon_Devices.png'),
    );
  }

  Widget productList(BuildContext context) {
    return SizedBox(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          productItem(context),
          productItem(context),
          productItem(context),
          productItem(context),
          productItem(context),
          productItem(context),
        ],
      ),
    );
  }

  Widget productItem(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      width: 170,
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child: Image.asset(
              'assets/product-1.png',
              width: 170,
              height: 170,
              fit: BoxFit.cover,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductPage(),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          const SizedBox(
            height: 60,
            child: Text(
              'Título do produto',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Marca',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          ),
          const SizedBox(height: 5),
          const Text(
            '\$ 200',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF00C569),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:layouts_flutter/widgets/product/product-list.widget.dart';
import '../widgets/category/category-list.widget.dart';
import '../widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 60),
            const SearchBox(),
            const SizedBox(height: 30),
            Text(
              'Categories',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 10),
            const SizedBox(
              height: 90,
              child: CategoryList(),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Selling',
                  style: Theme.of(context).textTheme.headline1,
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
            const SizedBox(
              height: 350,
              child: ProductList(scrollDirection: Axis.horizontal),
            ),
          ],
        ),
      ),
    );
  }
}

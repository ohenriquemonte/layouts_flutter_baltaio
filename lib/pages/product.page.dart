import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);

  final String image;
  final String title;
  final String description;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0,
              expandedHeight: 500,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(
                  image,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ];
        },
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('by $description'),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Details',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Nike Dry-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

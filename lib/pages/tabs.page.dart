import 'package:flutter/material.dart';
import 'package:layouts_flutter/pages/cart.page.dart';
import 'package:layouts_flutter/pages/home.page.dart';
import 'package:layouts_flutter/pages/login.page.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [
          const HomePage(),
          const CartPage(),
          LoginPage(),
        ],
      ),
      bottomNavigationBar: TabBar(
        tabs: const [
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.shopping_cart)),
          Tab(icon: Icon(Icons.perm_identity)),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: const EdgeInsets.all(5),
        indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}

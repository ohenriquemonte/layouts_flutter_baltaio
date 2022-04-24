import 'package:flutter/material.dart';
import 'package:layouts_flutter/pages/tabs.page.dart';

import 'themes/dark.theme.dart';
import 'themes/light.theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home: const DefaultTabController(length: 3, child: TabsPage()),
    );
  }
}

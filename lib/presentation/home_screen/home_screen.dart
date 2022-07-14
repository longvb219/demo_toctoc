import 'package:demo_toctoc/presentation/home_screen/demo_page/demo_page_1.dart';
import 'package:demo_toctoc/presentation/home_screen/demo_page/demo_page_2.dart';
import 'package:demo_toctoc/presentation/home_screen/demo_page/demo_page_3.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          DemoPage1(),
          DemoPage2(),
          DemoPage3(),
        ],
      ),
    );
  }
}

import 'package:demo_toctoc/home_screen/user_button.dart';
import 'package:flutter/material.dart';

import '../user_caption.dart';

class DemoPage2 extends StatelessWidget {
  const DemoPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Image.network(
              'https://images.wallpapersden.com/image/download/artistic-landscape-view_bGhlaGmUmZqaraWkpJRmbmdlrWZlbWU.jpg',
              fit: BoxFit.cover,
            ),
          ),
          UserButton(),
          UserCaption(),
        ],
      ),
    );
  }
}
